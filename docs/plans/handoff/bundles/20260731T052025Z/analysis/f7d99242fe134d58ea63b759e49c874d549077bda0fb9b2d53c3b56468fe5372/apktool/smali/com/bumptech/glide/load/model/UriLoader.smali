.class public final Lcom/bumptech/glide/load/model/UriLoader;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# static fields
.field public static final SCHEMES:Ljava/util/Set;


# instance fields
.field public final factory:Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v1, "content"

    .line 4
    .line 5
    const-string v2, "android.resource"

    .line 6
    .line 7
    const-string v3, "file"

    .line 8
    .line 9
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/bumptech/glide/load/model/UriLoader;->SCHEMES:Ljava/util/Set;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/model/UriLoader;->factory:Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 1

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    .line 3
    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 4
    .line 5
    new-instance p3, Lcom/bumptech/glide/signature/ObjectKey;

    .line 6
    .line 7
    invoke-direct {p3, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/bumptech/glide/load/model/UriLoader;->factory:Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;

    .line 11
    .line 12
    iget p4, p0, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;->$r8$classId:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    packed-switch p4, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    new-instance p4, Lcom/bumptech/glide/load/data/FileDescriptorLocalUriFetcher;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;->contentResolver:Landroid/content/ContentResolver;

    .line 21
    .line 22
    invoke-direct {p4, p0, p1, v0}, Lcom/bumptech/glide/load/data/FileDescriptorLocalUriFetcher;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_0
    new-instance p4, Lcom/bumptech/glide/load/data/FileDescriptorLocalUriFetcher;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;->contentResolver:Landroid/content/ContentResolver;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-direct {p4, p0, p1, v0}, Lcom/bumptech/glide/load/data/FileDescriptorLocalUriFetcher;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_1
    new-instance p4, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;->contentResolver:Landroid/content/ContentResolver;

    .line 38
    .line 39
    invoke-direct {p4, v0, p1, p0}, Lcom/bumptech/glide/load/data/LocalUriFetcher;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    .line 43
    .line 44
    .line 45
    return-object p2

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handles(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    .line 3
    sget-object p0, Lcom/bumptech/glide/load/model/UriLoader;->SCHEMES:Ljava/util/Set;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
