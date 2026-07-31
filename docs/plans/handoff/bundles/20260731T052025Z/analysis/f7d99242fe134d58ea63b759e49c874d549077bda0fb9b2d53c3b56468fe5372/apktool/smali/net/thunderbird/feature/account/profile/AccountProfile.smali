.class public final Lnet/thunderbird/feature/account/profile/AccountProfile;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

.field public final color:I

.field public final id:Lnet/thunderbird/feature/account/AccountId;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/account/AccountId;Ljava/lang/String;ILnet/thunderbird/feature/account/avatar/Avatar;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->name:Ljava/lang/String;

    .line 10
    .line 11
    iput p3, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->color:I

    .line 12
    .line 13
    iput-object p4, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 14
    .line 15
    return-void
.end method

.method public static copy$default(Lnet/thunderbird/feature/account/profile/AccountProfile;Ljava/lang/String;ILnet/thunderbird/feature/account/avatar/Avatar;I)Lnet/thunderbird/feature/account/profile/AccountProfile;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 2
    .line 3
    and-int/lit8 v1, p4, 0x2

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->name:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    and-int/lit8 v1, p4, 0x4

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget p2, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->color:I

    .line 14
    .line 15
    :cond_1
    and-int/lit8 p4, p4, 0x8

    .line 16
    .line 17
    if-eqz p4, :cond_2

    .line 18
    .line 19
    iget-object p3, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 20
    .line 21
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance p0, Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 34
    .line 35
    invoke-direct {p0, v0, p1, p2, p3}, Lnet/thunderbird/feature/account/profile/AccountProfile;-><init>(Lnet/thunderbird/feature/account/AccountId;Ljava/lang/String;ILnet/thunderbird/feature/account/avatar/Avatar;)V

    .line 36
    .line 37
    .line 38
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 10
    .line 11
    iget-object v0, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 12
    .line 13
    iget-object v1, p1, Lnet/thunderbird/feature/account/profile/AccountProfile;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->name:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p1, Lnet/thunderbird/feature/account/profile/AccountProfile;->name:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget v0, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->color:I

    .line 34
    .line 35
    iget v1, p1, Lnet/thunderbird/feature/account/profile/AccountProfile;->color:I

    .line 36
    .line 37
    if-eq v0, v1, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-object p0, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 41
    .line 42
    iget-object p1, p1, Lnet/thunderbird/feature/account/profile/AccountProfile;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_5

    .line 49
    .line 50
    :goto_0
    const/4 p0, 0x0

    .line 51
    return p0

    .line 52
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 53
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 2
    .line 3
    iget-object v0, v0, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-object v2, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->name:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v2, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->color:I

    .line 19
    .line 20
    add-int/2addr v0, v2

    .line 21
    mul-int/2addr v0, v1

    .line 22
    iget-object p0, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    add-int/2addr p0, v0

    .line 29
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AccountProfile(id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", name="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->name:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", color="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->color:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", avatar="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lnet/thunderbird/feature/account/profile/AccountProfile;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ")"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
