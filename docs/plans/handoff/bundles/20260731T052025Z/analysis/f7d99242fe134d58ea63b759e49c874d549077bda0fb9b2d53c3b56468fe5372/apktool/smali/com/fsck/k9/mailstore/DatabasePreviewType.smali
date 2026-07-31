.class public final enum Lcom/fsck/k9/mailstore/DatabasePreviewType;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lcom/fsck/k9/mailstore/DatabasePreviewType;

.field public static final Companion:Lcom/fsck/k9/mailstore/SendState$Companion;


# instance fields
.field public final databaseValue:Ljava/lang/String;

.field public final previewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, "NONE"

    .line 6
    .line 7
    const-string v4, "none"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mailstore/DatabasePreviewType;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    const-string v5, "TEXT"

    .line 16
    .line 17
    const-string v6, "text"

    .line 18
    .line 19
    invoke-direct {v3, v2, v4, v5, v6}, Lcom/fsck/k9/mailstore/DatabasePreviewType;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v5, Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 23
    .line 24
    const/4 v6, 0x3

    .line 25
    const-string v7, "ENCRYPTED"

    .line 26
    .line 27
    const-string v8, "encrypted"

    .line 28
    .line 29
    invoke-direct {v5, v4, v6, v7, v8}, Lcom/fsck/k9/mailstore/DatabasePreviewType;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v7, Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 33
    .line 34
    const/4 v8, 0x4

    .line 35
    const-string v9, "ERROR"

    .line 36
    .line 37
    const-string v10, "error"

    .line 38
    .line 39
    invoke-direct {v7, v6, v8, v9, v10}, Lcom/fsck/k9/mailstore/DatabasePreviewType;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-array v8, v8, [Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 43
    .line 44
    aput-object v0, v8, v1

    .line 45
    .line 46
    aput-object v3, v8, v2

    .line 47
    .line 48
    aput-object v5, v8, v4

    .line 49
    .line 50
    aput-object v7, v8, v6

    .line 51
    .line 52
    sput-object v8, Lcom/fsck/k9/mailstore/DatabasePreviewType;->$VALUES:[Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 53
    .line 54
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 55
    .line 56
    invoke-direct {v0, v8}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 60
    .line 61
    new-instance v0, Lcom/fsck/k9/mailstore/SendState$Companion;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;->Companion:Lcom/fsck/k9/mailstore/SendState$Companion;

    .line 67
    .line 68
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/fsck/k9/mailstore/DatabasePreviewType;->databaseValue:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/fsck/k9/mailstore/DatabasePreviewType;->previewType:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mailstore/DatabasePreviewType;
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fsck/k9/mailstore/DatabasePreviewType;
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/mailstore/DatabasePreviewType;->$VALUES:[Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 8
    .line 9
    return-object v0
.end method
