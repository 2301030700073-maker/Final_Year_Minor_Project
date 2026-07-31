.class public final Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final donationAmount:Lorg/wikipedia/donate/donationreminder/SelectableOption;

.field public final error:Ljava/lang/Throwable;

.field public final isDonationReminderEnabled:Z

.field public final isLoading:Z

.field public final readFrequency:Lorg/wikipedia/donate/donationreminder/SelectableOption;


# direct methods
.method public constructor <init>(ZLorg/wikipedia/donate/donationreminder/SelectableOption;Lorg/wikipedia/donate/donationreminder/SelectableOption;ZLjava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-boolean p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->isDonationReminderEnabled:Z

    .line 11
    .line 12
    iput-object p2, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->readFrequency:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 13
    .line 14
    iput-object p3, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->donationAmount:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 15
    .line 16
    iput-boolean p4, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->isLoading:Z

    .line 17
    .line 18
    iput-object p5, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->error:Ljava/lang/Throwable;

    .line 19
    .line 20
    return-void
.end method

.method public static copy$default(Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;ZLorg/wikipedia/donate/donationreminder/SelectableOption;Lorg/wikipedia/donate/donationreminder/SelectableOption;Ljava/lang/Throwable;I)Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;
    .locals 6

    .line 1
    and-int/lit8 v0, p5, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->isDonationReminderEnabled:Z

    .line 6
    .line 7
    :cond_0
    move v1, p1

    .line 8
    and-int/lit8 p1, p5, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->readFrequency:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 13
    .line 14
    :cond_1
    move-object v2, p2

    .line 15
    and-int/lit8 p1, p5, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p3, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->donationAmount:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 20
    .line 21
    :cond_2
    move-object v3, p3

    .line 22
    and-int/lit8 p1, p5, 0x8

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-boolean p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->isLoading:Z

    .line 27
    .line 28
    :goto_0
    move v4, p1

    .line 29
    goto :goto_1

    .line 30
    :cond_3
    const/4 p1, 0x0

    .line 31
    goto :goto_0

    .line 32
    :goto_1
    and-int/lit8 p1, p5, 0x10

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    iget-object p4, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->error:Ljava/lang/Throwable;

    .line 37
    .line 38
    :cond_4
    move-object v5, p4

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance v0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;

    .line 49
    .line 50
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;-><init>(ZLorg/wikipedia/donate/donationreminder/SelectableOption;Lorg/wikipedia/donate/donationreminder/SelectableOption;ZLjava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    return-object v0
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
    instance-of v1, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;

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
    check-cast p1, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;

    .line 12
    .line 13
    iget-boolean v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->isDonationReminderEnabled:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->isDonationReminderEnabled:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->readFrequency:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 21
    .line 22
    iget-object v3, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->readFrequency:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->donationAmount:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 32
    .line 33
    iget-object v3, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->donationAmount:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-boolean v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->isLoading:Z

    .line 43
    .line 44
    iget-boolean v3, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->isLoading:Z

    .line 45
    .line 46
    if-eq v1, v3, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-object p0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->error:Ljava/lang/Throwable;

    .line 50
    .line 51
    iget-object p1, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->error:Ljava/lang/Throwable;

    .line 52
    .line 53
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->isDonationReminderEnabled:Z

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
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v3, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->readFrequency:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 15
    .line 16
    invoke-virtual {v3}, Lorg/wikipedia/donate/donationreminder/SelectableOption;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    add-int/2addr v3, v0

    .line 21
    mul-int/lit8 v3, v3, 0x1f

    .line 22
    .line 23
    iget-object v0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->donationAmount:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/wikipedia/donate/donationreminder/SelectableOption;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/2addr v0, v3

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-boolean v3, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->isLoading:Z

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    move v1, v2

    .line 37
    :cond_1
    add-int/2addr v0, v1

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object p0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->error:Ljava/lang/Throwable;

    .line 41
    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    :goto_1
    add-int/2addr v0, p0

    .line 51
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DonationReminderUiState(isDonationReminderEnabled="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->isDonationReminderEnabled:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", readFrequency="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->readFrequency:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", donationAmount="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->donationAmount:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", isLoading="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->isLoading:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", error="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->error:Ljava/lang/Throwable;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
