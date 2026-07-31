.class public final Lcom/fsck/k9/ui/account/AccountImageModelLoaderFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# virtual methods
.method public final build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 0

    .line 1
    new-instance p0, Lcom/fsck/k9/contacts/ContactImageModelLoader;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/fsck/k9/contacts/ContactImageModelLoader;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method
