## function generates an upper triangular matrix of dimension n, with randomly populated values.
## values are uniformly sampled between l and u.

UTsqrmatgen <- function(n=10,l=1,u=30) {
        mat <- matrix(0,n,n)
        vals<-runif((n**2+n)/2,l,u)
        mat[row(mat)<=col(mat)]<-vals
        mat
}