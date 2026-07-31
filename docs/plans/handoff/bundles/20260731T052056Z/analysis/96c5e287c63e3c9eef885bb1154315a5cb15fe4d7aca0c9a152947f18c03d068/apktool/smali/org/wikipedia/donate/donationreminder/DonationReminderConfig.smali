.class public final Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/donate/donationreminder/DonationReminderConfig$Companion;


# instance fields
.field public final articleFrequency:I

.field public final articleVisit:I

.field public final donateAmount:F

.field public final goalReachedCount:I

.field public final isReminderReady:Z

.field public final promptLastSeen:J

.field public final setupTimestamp:J

.field public final timesReminderShown:I

.field public final userEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->Companion:Lorg/wikipedia/donate/donationreminder/DonationReminderConfig$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 102
    invoke-direct/range {v0 .. v11}, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;-><init>(ZJJIIFZII)V

    return-void
.end method

.method public synthetic constructor <init>(IZJJIIFZII)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-boolean v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->userEnabled:Z

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-boolean p2, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->userEnabled:Z

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    iput-wide v2, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->promptLastSeen:J

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iput-wide p3, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->promptLastSeen:J

    .line 24
    .line 25
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 26
    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    iput-wide v2, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->setupTimestamp:J

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    iput-wide p5, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->setupTimestamp:J

    .line 33
    .line 34
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 35
    .line 36
    if-nez p2, :cond_3

    .line 37
    .line 38
    iput v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleVisit:I

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    iput p7, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleVisit:I

    .line 42
    .line 43
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 44
    .line 45
    if-nez p2, :cond_4

    .line 46
    .line 47
    iput v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleFrequency:I

    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_4
    iput p8, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleFrequency:I

    .line 51
    .line 52
    :goto_4
    and-int/lit8 p2, p1, 0x20

    .line 53
    .line 54
    if-nez p2, :cond_5

    .line 55
    .line 56
    const/4 p2, 0x0

    .line 57
    iput p2, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->donateAmount:F

    .line 58
    .line 59
    goto :goto_5

    .line 60
    :cond_5
    iput p9, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->donateAmount:F

    .line 61
    .line 62
    :goto_5
    and-int/lit8 p2, p1, 0x40

    .line 63
    .line 64
    if-nez p2, :cond_6

    .line 65
    .line 66
    iput-boolean v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->isReminderReady:Z

    .line 67
    .line 68
    goto :goto_6

    .line 69
    :cond_6
    iput-boolean p10, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->isReminderReady:Z

    .line 70
    .line 71
    :goto_6
    and-int/lit16 p2, p1, 0x80

    .line 72
    .line 73
    if-nez p2, :cond_7

    .line 74
    .line 75
    iput v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->timesReminderShown:I

    .line 76
    .line 77
    goto :goto_7

    .line 78
    :cond_7
    iput p11, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->timesReminderShown:I

    .line 79
    .line 80
    :goto_7
    and-int/lit16 p1, p1, 0x100

    .line 81
    .line 82
    if-nez p1, :cond_8

    .line 83
    .line 84
    iput v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->goalReachedCount:I

    .line 85
    .line 86
    return-void

    .line 87
    :cond_8
    move/from16 p1, p12

    .line 88
    .line 89
    iput p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->goalReachedCount:I

    .line 90
    .line 91
    return-void
.end method

.method public constructor <init>(ZJJIIFZII)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-boolean p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->userEnabled:Z

    .line 94
    iput-wide p2, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->promptLastSeen:J

    .line 95
    iput-wide p4, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->setupTimestamp:J

    .line 96
    iput p6, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleVisit:I

    .line 97
    iput p7, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleFrequency:I

    .line 98
    iput p8, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->donateAmount:F

    .line 99
    iput-boolean p9, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->isReminderReady:Z

    .line 100
    iput p10, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->timesReminderShown:I

    .line 101
    iput p11, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->goalReachedCount:I

    return-void
.end method

.method public static copy$default(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;ZJJIIFZIII)Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;
    .locals 12

    .line 1
    move/from16 v0, p12

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->userEnabled:Z

    .line 8
    .line 9
    :cond_0
    move v1, p1

    .line 10
    and-int/lit8 p1, v0, 0x2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-wide p2, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->promptLastSeen:J

    .line 15
    .line 16
    :cond_1
    move-wide v2, p2

    .line 17
    and-int/lit8 p1, v0, 0x4

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-wide p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->setupTimestamp:J

    .line 22
    .line 23
    move-wide v4, p1

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    move-wide/from16 v4, p4

    .line 26
    .line 27
    :goto_0
    and-int/lit8 p1, v0, 0x8

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    iget p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleVisit:I

    .line 32
    .line 33
    move v6, p1

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    move/from16 v6, p6

    .line 36
    .line 37
    :goto_1
    and-int/lit8 p1, v0, 0x10

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    iget p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleFrequency:I

    .line 42
    .line 43
    move v7, p1

    .line 44
    goto :goto_2

    .line 45
    :cond_4
    move/from16 v7, p7

    .line 46
    .line 47
    :goto_2
    and-int/lit8 p1, v0, 0x20

    .line 48
    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    iget p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->donateAmount:F

    .line 52
    .line 53
    move v8, p1

    .line 54
    goto :goto_3

    .line 55
    :cond_5
    move/from16 v8, p8

    .line 56
    .line 57
    :goto_3
    and-int/lit8 p1, v0, 0x40

    .line 58
    .line 59
    if-eqz p1, :cond_6

    .line 60
    .line 61
    iget-boolean p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->isReminderReady:Z

    .line 62
    .line 63
    move v9, p1

    .line 64
    goto :goto_4

    .line 65
    :cond_6
    move/from16 v9, p9

    .line 66
    .line 67
    :goto_4
    and-int/lit16 p1, v0, 0x80

    .line 68
    .line 69
    if-eqz p1, :cond_7

    .line 70
    .line 71
    iget p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->timesReminderShown:I

    .line 72
    .line 73
    move v10, p1

    .line 74
    goto :goto_5

    .line 75
    :cond_7
    move/from16 v10, p10

    .line 76
    .line 77
    :goto_5
    and-int/lit16 p1, v0, 0x100

    .line 78
    .line 79
    if-eqz p1, :cond_8

    .line 80
    .line 81
    iget p0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->goalReachedCount:I

    .line 82
    .line 83
    move v11, p0

    .line 84
    goto :goto_6

    .line 85
    :cond_8
    move/from16 v11, p11

    .line 86
    .line 87
    :goto_6
    new-instance v0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 88
    .line 89
    invoke-direct/range {v0 .. v11}, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;-><init>(ZJJIIFZII)V

    .line 90
    .line 91
    .line 92
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

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
    check-cast p1, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 12
    .line 13
    iget-boolean v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->userEnabled:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->userEnabled:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-wide v3, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->promptLastSeen:J

    .line 21
    .line 22
    iget-wide v5, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->promptLastSeen:J

    .line 23
    .line 24
    cmp-long v1, v3, v5

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget-wide v3, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->setupTimestamp:J

    .line 30
    .line 31
    iget-wide v5, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->setupTimestamp:J

    .line 32
    .line 33
    cmp-long v1, v3, v5

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleVisit:I

    .line 39
    .line 40
    iget v3, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleVisit:I

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleFrequency:I

    .line 46
    .line 47
    iget v3, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleFrequency:I

    .line 48
    .line 49
    if-eq v1, v3, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    iget v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->donateAmount:F

    .line 53
    .line 54
    iget v3, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->donateAmount:F

    .line 55
    .line 56
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_7

    .line 61
    .line 62
    return v2

    .line 63
    :cond_7
    iget-boolean v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->isReminderReady:Z

    .line 64
    .line 65
    iget-boolean v3, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->isReminderReady:Z

    .line 66
    .line 67
    if-eq v1, v3, :cond_8

    .line 68
    .line 69
    return v2

    .line 70
    :cond_8
    iget v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->timesReminderShown:I

    .line 71
    .line 72
    iget v3, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->timesReminderShown:I

    .line 73
    .line 74
    if-eq v1, v3, :cond_9

    .line 75
    .line 76
    return v2

    .line 77
    :cond_9
    iget p0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->goalReachedCount:I

    .line 78
    .line 79
    iget p1, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->goalReachedCount:I

    .line 80
    .line 81
    if-eq p0, p1, :cond_a

    .line 82
    .line 83
    return v2

    .line 84
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->userEnabled:Z

    .line 2
    .line 3
    const/16 v1, 0x4d5

    .line 4
    .line 5
    const/16 v2, 0x4cf

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    const/16 v3, 0x1f

    .line 13
    .line 14
    mul-int/2addr v0, v3

    .line 15
    iget-wide v4, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->promptLastSeen:J

    .line 16
    .line 17
    const/16 v6, 0x20

    .line 18
    .line 19
    ushr-long v7, v4, v6

    .line 20
    .line 21
    xor-long/2addr v4, v7

    .line 22
    long-to-int v4, v4

    .line 23
    add-int/2addr v0, v4

    .line 24
    mul-int/2addr v0, v3

    .line 25
    iget-wide v4, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->setupTimestamp:J

    .line 26
    .line 27
    ushr-long v6, v4, v6

    .line 28
    .line 29
    xor-long/2addr v4, v6

    .line 30
    long-to-int v4, v4

    .line 31
    add-int/2addr v0, v4

    .line 32
    mul-int/2addr v0, v3

    .line 33
    iget v4, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleVisit:I

    .line 34
    .line 35
    add-int/2addr v0, v4

    .line 36
    mul-int/2addr v0, v3

    .line 37
    iget v4, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleFrequency:I

    .line 38
    .line 39
    add-int/2addr v0, v4

    .line 40
    mul-int/2addr v0, v3

    .line 41
    iget v4, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->donateAmount:F

    .line 42
    .line 43
    invoke-static {v0, v4, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IFI)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-boolean v4, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->isReminderReady:Z

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    move v1, v2

    .line 52
    :cond_1
    add-int/2addr v0, v1

    .line 53
    mul-int/2addr v0, v3

    .line 54
    iget v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->timesReminderShown:I

    .line 55
    .line 56
    add-int/2addr v0, v1

    .line 57
    mul-int/2addr v0, v3

    .line 58
    iget p0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->goalReachedCount:I

    .line 59
    .line 60
    add-int/2addr v0, p0

    .line 61
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DonationReminderConfig(userEnabled="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->userEnabled:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", promptLastSeen="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->promptLastSeen:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", setupTimestamp="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->setupTimestamp:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", articleVisit="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleVisit:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", articleFrequency="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleFrequency:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", donateAmount="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->donateAmount:F

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", isReminderReady="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->isReminderReady:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", timesReminderShown="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->timesReminderShown:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", goalReachedCount="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget p0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->goalReachedCount:I

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p0, ")"

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method
