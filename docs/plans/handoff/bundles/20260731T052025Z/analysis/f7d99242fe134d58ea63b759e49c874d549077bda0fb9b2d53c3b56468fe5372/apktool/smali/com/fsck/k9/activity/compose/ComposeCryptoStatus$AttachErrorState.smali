.class public final enum Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

.field public static final enum IS_INLINE:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    .line 2
    .line 3
    const-string v1, "IS_INLINE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;->IS_INLINE:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    .line 13
    .line 14
    aput-object v0, v1, v2

    .line 15
    .line 16
    sput-object v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;->$VALUES:[Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    .line 17
    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;->$VALUES:[Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    .line 8
    .line 9
    return-object v0
.end method
