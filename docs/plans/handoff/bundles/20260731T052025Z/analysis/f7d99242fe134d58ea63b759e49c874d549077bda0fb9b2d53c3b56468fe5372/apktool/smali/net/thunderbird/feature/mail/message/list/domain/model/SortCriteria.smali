.class public final Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DateSortTypeOnly:Ljava/util/Set;

.field public static final SecondaryNotRequiredForSortTypes:Ljava/util/LinkedHashSet;


# instance fields
.field public final isSecondarySortRequired:Z

.field public final primary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

.field public final secondary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->DateAsc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 6
    .line 7
    aput-object v3, v1, v2

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    sget-object v4, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->DateDesc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 11
    .line 12
    aput-object v4, v1, v3

    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->DateSortTypeOnly:Ljava/util/Set;

    .line 19
    .line 20
    new-array v0, v0, [Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 21
    .line 22
    sget-object v4, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->ArrivalAsc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 23
    .line 24
    aput-object v4, v0, v2

    .line 25
    .line 26
    sget-object v2, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->ArrivalDesc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 27
    .line 28
    aput-object v2, v0, v3

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Iterable;

    .line 35
    .line 36
    invoke-static {v1, v0}, Lorg/jsoup/helper/Validate;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->SecondaryNotRequiredForSortTypes:Ljava/util/LinkedHashSet;

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->primary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->secondary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 10
    .line 11
    sget-object v0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->SecondaryNotRequiredForSortTypes:Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string p0, "Secondary sorting criterion must be null for "

    .line 24
    .line 25
    invoke-static {p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v2

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const-string p0, "Secondary sorting criterion is missing for "

    .line 39
    .line 40
    invoke-static {p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v2

    .line 44
    :cond_3
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_5

    .line 49
    .line 50
    if-eqz p2, :cond_5

    .line 51
    .line 52
    sget-object v1, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->DateSortTypeOnly:Ljava/util/Set;

    .line 53
    .line 54
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    const-string p0, "Secondary sorting criterion "

    .line 62
    .line 63
    const-string v0, " is not supported for "

    .line 64
    .line 65
    invoke-static {p0, p2, v0, p1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    throw v2

    .line 69
    :cond_5
    :goto_2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    xor-int/lit8 p1, p1, 0x1

    .line 74
    .line 75
    iput-boolean p1, p0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->isSecondarySortRequired:Z

    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 12
    .line 13
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->primary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 14
    .line 15
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->primary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->secondary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 21
    .line 22
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->secondary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 23
    .line 24
    if-eq p0, p1, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->primary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->secondary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    :goto_0
    add-int/2addr v0, p0

    .line 20
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SortCriteria(primary="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->primary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", secondary="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->secondary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
