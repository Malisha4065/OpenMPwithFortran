program helloopenmp
    use omp_lib
    implicit none

    integer :: thread_id

    !$OMP PARALLEL PRIVATE(thread_id)
        thread_id = OMP_get_thread_num()
        print *, "Hello from thread ", thread_id, "!"
    !$OMP END PARALLEL

end program helloopenmp