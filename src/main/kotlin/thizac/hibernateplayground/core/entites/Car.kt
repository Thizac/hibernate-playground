package thizac.hibernateplayground.core.entites

import javax.persistence.*

@Entity
@Table(name = "cars")
class Car(
    @Id
    @Column(name = "id", nullable = false)
    var id: Long? = 0,

    @Column(name = "year", nullable = false)
    var year: String,


    @Column(name = "mark", nullable = false)
    var mark: String,

    @Column(name = "vin", nullable = false)
    var vin: String,

    @ManyToOne
    @JoinColumn(name = "user_id")
    var user: User
)