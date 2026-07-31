.class public final Lorg/wikipedia/games/onthisday/DateDecorator;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lorg/wikipedia/games/onthisday/DateDecorator$CREATOR;


# instance fields
.field public final calendar:Ljava/util/Calendar;

.field public final endDate:Ljava/util/Date;

.field public final scoreData:Ljava/util/Map;

.field public final startDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/games/onthisday/DateDecorator$CREATOR;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/games/onthisday/DateDecorator;->CREATOR:Lorg/wikipedia/games/onthisday/DateDecorator$CREATOR;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/DateDecorator;->startDate:Ljava/util/Date;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/games/onthisday/DateDecorator;->endDate:Ljava/util/Date;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/games/onthisday/DateDecorator;->scoreData:Ljava/util/Map;

    .line 12
    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/DateDecorator;->calendar:Ljava/util/Calendar;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method
