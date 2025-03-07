program criticalregion
    use omp_lib
    implicit none

    integer :: sum, lsum, i

    sum = 0

    !$OMP PARALLEL PRIVATE(lsum, i)
        lsum = 0

        !$OMP DO
            do i = 1, 30
                lsum = lsum + 20
            end do
        !$OMP END DO

        !$OMP CRITICAL
            sum = sum + lsum
        !$OMP END CRITICAL
    
    !$OMP END PARALLEL

    print *, "SUM IS: ", sum

end program criticalregion