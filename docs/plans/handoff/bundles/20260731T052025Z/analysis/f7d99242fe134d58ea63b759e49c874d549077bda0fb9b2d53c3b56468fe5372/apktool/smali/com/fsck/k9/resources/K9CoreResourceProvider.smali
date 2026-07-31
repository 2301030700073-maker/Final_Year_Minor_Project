.class public final Lcom/fsck/k9/resources/K9CoreResourceProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/resources/K9CoreResourceProvider;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final searchUnifiedFoldersDetail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/resources/K9CoreResourceProvider;->context:Landroid/content/Context;

    .line 2
    .line 3
    const v0, 0x7f120382

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final searchUnifiedFoldersTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/resources/K9CoreResourceProvider;->context:Landroid/content/Context;

    .line 2
    .line 3
    const v0, 0x7f120383

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method
