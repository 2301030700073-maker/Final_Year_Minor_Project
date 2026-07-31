.class public final enum Lcom/google/type/DateTime$TimeOffsetCase;
.super Ljava/lang/Enum;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeOffsetCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/type/DateTime$TimeOffsetCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/type/DateTime$TimeOffsetCase;

.field public static final enum TIMEOFFSET_NOT_SET:Lcom/google/type/DateTime$TimeOffsetCase;

.field public static final enum TIME_ZONE:Lcom/google/type/DateTime$TimeOffsetCase;

.field public static final enum UTC_OFFSET:Lcom/google/type/DateTime$TimeOffsetCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/type/DateTime$TimeOffsetCase;
    .locals 3

    .line 38
    sget-object v0, Lcom/google/type/DateTime$TimeOffsetCase;->UTC_OFFSET:Lcom/google/type/DateTime$TimeOffsetCase;

    sget-object v1, Lcom/google/type/DateTime$TimeOffsetCase;->TIME_ZONE:Lcom/google/type/DateTime$TimeOffsetCase;

    sget-object v2, Lcom/google/type/DateTime$TimeOffsetCase;->TIMEOFFSET_NOT_SET:Lcom/google/type/DateTime$TimeOffsetCase;

    filled-new-array {v0, v1, v2}, [Lcom/google/type/DateTime$TimeOffsetCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 39
    new-instance v0, Lcom/google/type/DateTime$TimeOffsetCase;

    const/16 v1, 0x8

    const-string v2, "UTC_OFFSET"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/type/DateTime$TimeOffsetCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/type/DateTime$TimeOffsetCase;->UTC_OFFSET:Lcom/google/type/DateTime$TimeOffsetCase;

    .line 40
    new-instance v0, Lcom/google/type/DateTime$TimeOffsetCase;

    const/4 v1, 0x1

    const/16 v2, 0x9

    const-string v4, "TIME_ZONE"

    invoke-direct {v0, v4, v1, v2}, Lcom/google/type/DateTime$TimeOffsetCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/type/DateTime$TimeOffsetCase;->TIME_ZONE:Lcom/google/type/DateTime$TimeOffsetCase;

    .line 41
    new-instance v0, Lcom/google/type/DateTime$TimeOffsetCase;

    const-string v1, "TIMEOFFSET_NOT_SET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/type/DateTime$TimeOffsetCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/type/DateTime$TimeOffsetCase;->TIMEOFFSET_NOT_SET:Lcom/google/type/DateTime$TimeOffsetCase;

    .line 38
    invoke-static {}, Lcom/google/type/DateTime$TimeOffsetCase;->$values()[Lcom/google/type/DateTime$TimeOffsetCase;

    move-result-object v0

    sput-object v0, Lcom/google/type/DateTime$TimeOffsetCase;->$VALUES:[Lcom/google/type/DateTime$TimeOffsetCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/google/type/DateTime$TimeOffsetCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/type/DateTime$TimeOffsetCase;
    .locals 1

    if-eqz p0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_0
    sget-object p0, Lcom/google/type/DateTime$TimeOffsetCase;->TIME_ZONE:Lcom/google/type/DateTime$TimeOffsetCase;

    return-object p0

    .line 56
    :cond_1
    sget-object p0, Lcom/google/type/DateTime$TimeOffsetCase;->UTC_OFFSET:Lcom/google/type/DateTime$TimeOffsetCase;

    return-object p0

    .line 58
    :cond_2
    sget-object p0, Lcom/google/type/DateTime$TimeOffsetCase;->TIMEOFFSET_NOT_SET:Lcom/google/type/DateTime$TimeOffsetCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/google/type/DateTime$TimeOffsetCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    invoke-static {p0}, Lcom/google/type/DateTime$TimeOffsetCase;->forNumber(I)Lcom/google/type/DateTime$TimeOffsetCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/type/DateTime$TimeOffsetCase;
    .locals 1

    .line 38
    const-class v0, Lcom/google/type/DateTime$TimeOffsetCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime$TimeOffsetCase;

    return-object p0
.end method

.method public static values()[Lcom/google/type/DateTime$TimeOffsetCase;
    .locals 1

    .line 38
    sget-object v0, Lcom/google/type/DateTime$TimeOffsetCase;->$VALUES:[Lcom/google/type/DateTime$TimeOffsetCase;

    invoke-virtual {v0}, [Lcom/google/type/DateTime$TimeOffsetCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/type/DateTime$TimeOffsetCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/google/type/DateTime$TimeOffsetCase;->value:I

    return v0
.end method
