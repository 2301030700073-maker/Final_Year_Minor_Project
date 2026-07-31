.class public final Lorg/wikipedia/games/onthisday/DateDecorator$CREATOR;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public static getDateKey(III)J
    .locals 0

    .line 1
    mul-int/lit16 p0, p0, 0x2710

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x64

    .line 4
    .line 5
    add-int/2addr p1, p0

    .line 6
    add-int/2addr p1, p2

    .line 7
    int-to-long p0, p1

    .line 8
    return-wide p0
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lorg/wikipedia/games/onthisday/DateDecorator;

    .line 5
    .line 6
    new-instance p1, Ljava/util/Date;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/Date;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, v0, v1}, Lorg/wikipedia/games/onthisday/DateDecorator;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Lorg/wikipedia/games/onthisday/DateDecorator;

    .line 2
    .line 3
    return-object p0
.end method
