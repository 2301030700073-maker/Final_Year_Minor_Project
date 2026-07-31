.class public final enum Lcom/fsck/k9/mailstore/SendState;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lcom/fsck/k9/mailstore/SendState;

.field public static final Companion:Lcom/fsck/k9/mailstore/SendState$Companion;

.field public static final enum READY:Lcom/fsck/k9/mailstore/SendState;

.field public static final enum RETRIES_EXCEEDED:Lcom/fsck/k9/mailstore/SendState;


# instance fields
.field public final databaseName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/fsck/k9/mailstore/SendState;

    .line 2
    .line 3
    const-string v1, "ready"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "READY"

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/fsck/k9/mailstore/SendState;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/fsck/k9/mailstore/SendState;->READY:Lcom/fsck/k9/mailstore/SendState;

    .line 12
    .line 13
    new-instance v1, Lcom/fsck/k9/mailstore/SendState;

    .line 14
    .line 15
    const-string v3, "retries_exceeded"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "RETRIES_EXCEEDED"

    .line 19
    .line 20
    invoke-direct {v1, v4, v5, v3}, Lcom/fsck/k9/mailstore/SendState;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/fsck/k9/mailstore/SendState;->RETRIES_EXCEEDED:Lcom/fsck/k9/mailstore/SendState;

    .line 24
    .line 25
    new-instance v3, Lcom/fsck/k9/mailstore/SendState;

    .line 26
    .line 27
    const-string v5, "error"

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "ERROR"

    .line 31
    .line 32
    invoke-direct {v3, v6, v7, v5}, Lcom/fsck/k9/mailstore/SendState;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    new-array v5, v5, [Lcom/fsck/k9/mailstore/SendState;

    .line 37
    .line 38
    aput-object v0, v5, v2

    .line 39
    .line 40
    aput-object v1, v5, v4

    .line 41
    .line 42
    aput-object v3, v5, v6

    .line 43
    .line 44
    sput-object v5, Lcom/fsck/k9/mailstore/SendState;->$VALUES:[Lcom/fsck/k9/mailstore/SendState;

    .line 45
    .line 46
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 47
    .line 48
    invoke-direct {v0, v5}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/fsck/k9/mailstore/SendState;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 52
    .line 53
    new-instance v0, Lcom/fsck/k9/mailstore/SendState$Companion;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lcom/fsck/k9/mailstore/SendState;->Companion:Lcom/fsck/k9/mailstore/SendState$Companion;

    .line 59
    .line 60
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/fsck/k9/mailstore/SendState;->databaseName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mailstore/SendState;
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/mailstore/SendState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/mailstore/SendState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fsck/k9/mailstore/SendState;
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/mailstore/SendState;->$VALUES:[Lcom/fsck/k9/mailstore/SendState;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fsck/k9/mailstore/SendState;

    .line 8
    .line 9
    return-object v0
.end method
