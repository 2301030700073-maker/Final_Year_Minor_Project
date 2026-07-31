.class public final Lcom/bumptech/glide/load/model/FileLoader;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# instance fields
.field public final synthetic $r8$classId:I

.field public final fileOpener:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bumptech/glide/load/model/FileLoader;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/model/FileLoader;->fileOpener:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 1

    .line 1
    iget p2, p0, Lcom/bumptech/glide/load/model/FileLoader;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/bumptech/glide/load/model/FileLoader;->fileOpener:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 9
    .line 10
    new-instance p3, Lcom/bumptech/glide/signature/ObjectKey;

    .line 11
    .line 12
    invoke-direct {p3, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance p4, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p0, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    .line 22
    .line 23
    invoke-direct {p4, p1, p0}, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/ByteBufferEncoder;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    .line 27
    .line 28
    .line 29
    return-object p2

    .line 30
    :pswitch_0
    check-cast p1, [B

    .line 31
    .line 32
    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 33
    .line 34
    new-instance p3, Lcom/bumptech/glide/signature/ObjectKey;

    .line 35
    .line 36
    invoke-direct {p3, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    new-instance p4, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;

    .line 40
    .line 41
    check-cast p0, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-direct {p4, v0, p1, p0}, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    .line 48
    .line 49
    .line 50
    return-object p2

    .line 51
    :pswitch_1
    check-cast p1, Ljava/io/File;

    .line 52
    .line 53
    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 54
    .line 55
    new-instance p3, Lcom/bumptech/glide/signature/ObjectKey;

    .line 56
    .line 57
    invoke-direct {p3, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance p4, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;

    .line 61
    .line 62
    check-cast p0, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    invoke-direct {p4, v0, p1, p0}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    .line 69
    .line 70
    .line 71
    return-object p2

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handles(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/bumptech/glide/load/model/FileLoader;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p1, "data:image"

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :pswitch_0
    check-cast p1, [B

    .line 19
    .line 20
    return v0

    .line 21
    :pswitch_1
    check-cast p1, Ljava/io/File;

    .line 22
    .line 23
    return v0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
