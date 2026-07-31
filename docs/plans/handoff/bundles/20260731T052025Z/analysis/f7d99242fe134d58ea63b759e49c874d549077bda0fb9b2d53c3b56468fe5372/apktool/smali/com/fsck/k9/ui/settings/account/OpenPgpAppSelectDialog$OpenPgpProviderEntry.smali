.class public final Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final icon:Landroid/graphics/drawable/Drawable;

.field public intent:Landroid/content/Intent;

.field public final packageName:Ljava/lang/String;

.field public final simpleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->simpleName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->simpleName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
