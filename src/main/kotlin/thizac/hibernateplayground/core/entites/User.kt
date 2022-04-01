package thizac.hibernateplayground.core.entites

import thizac.hibernateplayground.core.enums.Gender
import javax.persistence.*


@Entity
@Table(name = "users")
class User(
    @Id
    @Column(name = "id", nullable = false)
    var id: Long = 0,

    @Column(name = "first_name", nullable = false)
    var firstName: String,

    @Column(name = "last_name", nullable = false)
    var lastName: String,

    @Column(name = "email", nullable = false)
    var email: String,

    @Column(name = "gender", nullable = false)
    var gender: Gender,

    @Column(name = "city", nullable = false)
    var city: String,

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    var cars: MutableList<Car>,
    )