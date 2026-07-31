.class public final Lorg/wikipedia/dataclient/donate/DonationConfig;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/donate/DonationConfig$Companion;


# instance fields
.field public final countryCodeEmailOptInRequired:Ljava/util/List;

.field public final countryCodeGooglePayEnabled:Ljava/util/List;

.field public final currencyAmountPresets:Ljava/util/Map;

.field public final currencyMaximumDonation:Ljava/util/Map;

.field public final currencyMinimumDonation:Ljava/util/Map;

.field public final currencyTransactionFees:Ljava/util/Map;

.field public final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/donate/DonationConfig$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/donate/DonationConfig;->Companion:Lorg/wikipedia/dataclient/donate/DonationConfig$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0xc

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v3, 0xd

    .line 24
    .line 25
    invoke-direct {v2, v3}, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/16 v4, 0xe

    .line 35
    .line 36
    invoke-direct {v3, v4}, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v3}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    new-instance v4, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/16 v5, 0xf

    .line 46
    .line 47
    invoke-direct {v4, v5}, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v4}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    new-instance v5, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    const/16 v6, 0x10

    .line 57
    .line 58
    invoke-direct {v5, v6}, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v5}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    new-instance v6, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/16 v7, 0x11

    .line 68
    .line 69
    invoke-direct {v6, v7}, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v6}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/4 v6, 0x7

    .line 77
    new-array v6, v6, [Lkotlin/Lazy;

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    const/4 v8, 0x0

    .line 81
    aput-object v7, v6, v8

    .line 82
    .line 83
    const/4 v7, 0x1

    .line 84
    aput-object v1, v6, v7

    .line 85
    .line 86
    const/4 v1, 0x2

    .line 87
    aput-object v2, v6, v1

    .line 88
    .line 89
    const/4 v1, 0x3

    .line 90
    aput-object v3, v6, v1

    .line 91
    .line 92
    const/4 v1, 0x4

    .line 93
    aput-object v4, v6, v1

    .line 94
    .line 95
    const/4 v1, 0x5

    .line 96
    aput-object v5, v6, v1

    .line 97
    .line 98
    const/4 v1, 0x6

    .line 99
    aput-object v0, v6, v1

    .line 100
    .line 101
    sput-object v6, Lorg/wikipedia/dataclient/donate/DonationConfig;->$childSerializers:[Lkotlin/Lazy;

    .line 102
    .line 103
    return-void
.end method

.method public synthetic constructor <init>(IILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v1, v0, :cond_6

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p2, p0, Lorg/wikipedia/dataclient/donate/DonationConfig;->version:I

    .line 10
    .line 11
    and-int/lit8 p2, p1, 0x2

    .line 12
    .line 13
    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    iput-object v0, p0, Lorg/wikipedia/dataclient/donate/DonationConfig;->currencyMinimumDonation:Ljava/util/Map;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-object p3, p0, Lorg/wikipedia/dataclient/donate/DonationConfig;->currencyMinimumDonation:Ljava/util/Map;

    .line 21
    .line 22
    :goto_0
    and-int/lit8 p2, p1, 0x4

    .line 23
    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    iput-object v0, p0, Lorg/wikipedia/dataclient/donate/DonationConfig;->currencyMaximumDonation:Ljava/util/Map;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iput-object p4, p0, Lorg/wikipedia/dataclient/donate/DonationConfig;->currencyMaximumDonation:Ljava/util/Map;

    .line 30
    .line 31
    :goto_1
    and-int/lit8 p2, p1, 0x8

    .line 32
    .line 33
    if-nez p2, :cond_2

    .line 34
    .line 35
    iput-object v0, p0, Lorg/wikipedia/dataclient/donate/DonationConfig;->currencyAmountPresets:Ljava/util/Map;

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    iput-object p5, p0, Lorg/wikipedia/dataclient/donate/DonationConfig;->currencyAmountPresets:Ljava/util/Map;

    .line 39
    .line 40
    :goto_2
    and-int/lit8 p2, p1, 0x10

    .line 41
    .line 42
    if-nez p2, :cond_3

    .line 43
    .line 44
    iput-object v0, p0, Lorg/wikipedia/dataclient/donate/DonationConfig;->currencyTransactionFees:Ljava/util/Map;

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    iput-object p6, p0, Lorg/wikipedia/dataclient/donate/DonationConfig;->currencyTransactionFees:Ljava/util/Map;

    .line 48
    .line 49
    :goto_3
    and-int/lit8 p2, p1, 0x20

    .line 50
    .line 51
    sget-object p3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 52
    .line 53
    if-nez p2, :cond_4

    .line 54
    .line 55
    iput-object p3, p0, Lorg/wikipedia/dataclient/donate/DonationConfig;->countryCodeEmailOptInRequired:Ljava/util/List;

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_4
    iput-object p7, p0, Lorg/wikipedia/dataclient/donate/DonationConfig;->countryCodeEmailOptInRequired:Ljava/util/List;

    .line 59
    .line 60
    :goto_4
    and-int/lit8 p1, p1, 0x40

    .line 61
    .line 62
    if-nez p1, :cond_5

    .line 63
    .line 64
    iput-object p3, p0, Lorg/wikipedia/dataclient/donate/DonationConfig;->countryCodeGooglePayEnabled:Ljava/util/List;

    .line 65
    .line 66
    return-void

    .line 67
    :cond_5
    iput-object p8, p0, Lorg/wikipedia/dataclient/donate/DonationConfig;->countryCodeGooglePayEnabled:Ljava/util/List;

    .line 68
    .line 69
    return-void

    .line 70
    :cond_6
    sget-object p0, Lorg/wikipedia/dataclient/donate/DonationConfig$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/donate/DonationConfig$$serializer;

    .line 71
    .line 72
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/donate/DonationConfig$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 77
    .line 78
    .line 79
    const/4 p0, 0x0

    .line 80
    throw p0
.end method
