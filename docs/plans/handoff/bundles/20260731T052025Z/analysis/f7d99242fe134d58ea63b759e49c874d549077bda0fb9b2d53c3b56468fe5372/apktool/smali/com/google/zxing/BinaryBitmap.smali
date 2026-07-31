.class public final Lcom/google/zxing/BinaryBitmap;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
.implements Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;
.implements Landroidx/appcompat/view/ActionMode$Callback;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Lkotlinx/serialization/internal/SerializerCache;
.implements Lkotlinx/serialization/internal/ParametrizedSerializerCache;


# instance fields
.field public final synthetic $r8$classId:I

.field public binarizer:Ljava/lang/Object;

.field public matrix:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    iput-object p2, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    iput-object p2, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v0, 0x19

    iput v0, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p1}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;I)V
    .locals 0

    iput p3, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    packed-switch p3, :pswitch_data_0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 68
    new-instance p1, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;

    invoke-direct {p1}, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    return-void

    .line 69
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 71
    new-instance p1, Lcom/fsck/k9/EmailAddressValidator;

    .line 72
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/bumptech/glide/GlideBuilder$1;Lcom/fsck/k9/mail/filter/PeekableInputStream;)V
    .locals 0

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 79
    new-instance p1, Lokio/Buffer;

    .line 80
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/Part;Lokio/AsyncTimeout$Companion;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lcom/fsck/k9/mailstore/LocalStore$1;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 61
    iput-object p2, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lnet/thunderbird/feature/account/AccountId;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 65
    iput-object p2, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/preferences/K9StorageEditor;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    const/4 p3, 0x6

    iput p3, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V
    .locals 3

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    iput v0, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    array-length v0, p2

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 12
    .line 13
    array-length p1, p2

    .line 14
    const/4 v0, 0x1

    .line 15
    if-le p1, v0, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    aget v2, p2, v1

    .line 19
    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    :goto_0
    if-ge v0, p1, :cond_0

    .line 23
    .line 24
    aget v2, p2, v0

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-ne v0, p1, :cond_1

    .line 32
    .line 33
    filled-new-array {v1}, [I

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    sub-int/2addr p1, v0

    .line 41
    new-array v2, p1, [I

    .line 42
    .line 43
    iput-object v2, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-static {p2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iput-object p2, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 50
    .line 51
    :goto_1
    return-void

    .line 52
    :cond_3
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    throw p0
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/fsck/k9/mail/Address;

    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 88
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/fsck/k9/mail/Address;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/fsck/k9/mail/Address;

    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 84
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Must have at least one ID"

    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/16 v0, 0x1b

    iput v0, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 96
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const/16 v0, 0x1c

    iput v0, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 98
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/JobSupport;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    sget-object v0, Lkotlinx/coroutines/JobSupport$onJoin$1;->INSTANCE:Lkotlinx/coroutines/JobSupport$onJoin$1;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 101
    sget-object p1, Lkotlinx/coroutines/selects/SelectKt$DUMMY_PROCESS_RESULT_FUNCTION$1;->INSTANCE:Lkotlinx/coroutines/selects/SelectKt$DUMMY_PROCESS_RESULT_FUNCTION$1;

    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Lcom/fsck/k9/mail/Address;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 91
    new-array p1, p1, [Lcom/fsck/k9/mail/Address;

    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    return-void
.end method

.method public static merge(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lde/cketti/changelog/ReleaseItem;

    .line 21
    .line 22
    iget v2, v1, Lde/cketti/changelog/ReleaseItem;->versionCode:I

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x0

    .line 42
    :goto_1
    if-ge v2, v1, :cond_1

    .line 43
    .line 44
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lde/cketti/changelog/ReleaseItem;

    .line 49
    .line 50
    iget v4, v3, Lde/cketti/changelog/ReleaseItem;->versionCode:I

    .line 51
    .line 52
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lde/cketti/changelog/ReleaseItem;

    .line 57
    .line 58
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    new-instance p0, Landroidx/viewpager/widget/ViewPager$1;

    .line 65
    .line 66
    const/16 v0, 0x16

    .line 67
    .line 68
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 72
    .line 73
    .line 74
    return-object p1
.end method

.method public static varargs of([Ljava/lang/String;)Lcom/google/zxing/BinaryBitmap;
    .locals 5

    .line 1
    :try_start_0
    array-length v0, p0

    .line 2
    new-array v0, v0, [Lokio/ByteString;

    .line 3
    .line 4
    new-instance v1, Lokio/Buffer;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    array-length v3, p0

    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    aget-object v3, p0, v2

    .line 14
    .line 15
    invoke-static {v1, v3}, Lcom/squareup/moshi/JsonUtf8Writer;->string(Lokio/Buffer;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 19
    .line 20
    .line 21
    iget-wide v3, v1, Lokio/Buffer;->size:J

    .line 22
    .line 23
    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    aput-object v3, v0, v2

    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 33
    .line 34
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, [Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Lokio/Options$Companion;->of([Lokio/ByteString;)Lokio/Options;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/16 v2, 0x16

    .line 45
    .line 46
    invoke-direct {v1, v2, p0, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :catch_0
    move-exception p0

    .line 51
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method public static final readResponseAfterReplyCode$maybeReadAndCompareEnhancedStatusCode(Lokio/Buffer;Lcom/google/zxing/BinaryBitmap;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;I)Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;
    .locals 7

    .line 1
    div-int/lit8 p4, p4, 0x64

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq p4, v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    if-eq p4, v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    if-eq p4, v0, :cond_0

    .line 13
    .line 14
    :goto_0
    move-object p4, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lokio/Buffer;->peek()Lokio/RealBufferedSource;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0, p4}, Lcom/google/zxing/BinaryBitmap;->readEnhancedStatusCode(Lokio/BufferedSource;I)Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    iget-wide v3, p0, Lokio/Buffer;->size:J

    .line 25
    .line 26
    iget-object v0, v0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 27
    .line 28
    iget-wide v5, v0, Lokio/Buffer;->size:J

    .line 29
    .line 30
    sub-long/2addr v3, v5

    .line 31
    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->skip(J)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/transport/smtp/SmtpResponseParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-array p4, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {p4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    const-string v0, "Error parsing enhanced status code"

    .line 43
    .line 44
    invoke-static {p0, v0, p4}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :goto_1
    iget-boolean p0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 49
    .line 50
    if-nez p0, :cond_2

    .line 51
    .line 52
    iget-object p0, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    iget-object p0, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 62
    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string p3, "Multi-line response with enhanced status codes not matching: "

    .line 66
    .line 67
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p0, " != "

    .line 74
    .line 75
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const/4 p2, 0x1

    .line 86
    invoke-virtual {p1, p0, p2}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
    throw v2

    .line 90
    :cond_2
    :goto_2
    iput-boolean v1, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 91
    .line 92
    return-object p4
.end method


# virtual methods
.method public addOrSubtract(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/BinaryBitmap;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->isZero()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->isZero()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, [I

    .line 32
    .line 33
    iget-object p1, p1, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, [I

    .line 36
    .line 37
    array-length v1, p0

    .line 38
    array-length v2, p1

    .line 39
    if-le v1, v2, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object v6, p1

    .line 43
    move-object p1, p0

    .line 44
    move-object p0, v6

    .line 45
    :goto_0
    array-length v1, p0

    .line 46
    new-array v1, v1, [I

    .line 47
    .line 48
    array-length v2, p0

    .line 49
    array-length v3, p1

    .line 50
    sub-int/2addr v2, v3

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    move v3, v2

    .line 56
    :goto_1
    array-length v4, p0

    .line 57
    if-ge v3, v4, :cond_3

    .line 58
    .line 59
    sub-int v4, v3, v2

    .line 60
    .line 61
    aget v4, p1, v4

    .line 62
    .line 63
    aget v5, p0, v3

    .line 64
    .line 65
    xor-int/2addr v4, v5

    .line 66
    aput v4, v1, v3

    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    new-instance p0, Lcom/google/zxing/BinaryBitmap;

    .line 72
    .line 73
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_4
    const-string p0, "GenericGFPolys do not have same GenericGF field"

    .line 78
    .line 79
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 p0, 0x0

    .line 83
    return-object p0
.end method

.method public buildTransitionRecord(Lnet/thunderbird/core/common/state/StateMachine$StateTransitionRecord;Lkotlin/time/Instant;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lnet/thunderbird/core/common/state/StateMachine$StateTransitionRecord;->event:Ljava/lang/Object;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p1, Lnet/thunderbird/core/common/state/StateMachine$StateTransitionRecord;->previousState:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v3, p1, Lnet/thunderbird/core/common/state/StateMachine$StateTransitionRecord;->newState:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    if-eq v4, v5, :cond_0

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v4, 0x0

    .line 28
    :goto_0
    if-eqz v4, :cond_1

    .line 29
    .line 30
    const-string v5, "->"

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const-string/jumbo v5, "\u27f3"

    .line 34
    .line 35
    .line 36
    :goto_1
    if-eqz p2, :cond_2

    .line 37
    .line 38
    iget-object p1, p1, Lnet/thunderbird/core/common/state/StateMachine$StateTransitionRecord;->timestamp:Lkotlin/time/Instant;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lkotlin/time/Instant;->minus-UwyO8pc(Lkotlin/time/Instant;)J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    invoke-static {p1, p2}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    .line 45
    .line 46
    .line 47
    move-result-wide p1

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v7, "+"

    .line 51
    .line 52
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p1, "ms"

    .line 59
    .line 60
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const-string p1, ""

    .line 69
    .line 70
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v6}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p2, " "

    .line 103
    .line 104
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v5}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    const-string v6, "event="

    .line 136
    .line 137
    invoke-static {v6, v5}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    const/4 v6, 0x2

    .line 142
    invoke-static {p2, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-static {v5, v7}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-lez v5, :cond_3

    .line 158
    .line 159
    invoke-static {p2, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-static {p1, v5}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    :cond_3
    const/16 p1, 0xa

    .line 171
    .line 172
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-static {v0}, Lkotlin/ranges/RangesKt;->toPropertyMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    const/4 v8, 0x4

    .line 184
    if-nez v7, :cond_4

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    const-string v7, " payload:"

    .line 199
    .line 200
    invoke-static {v0, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {p2, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    invoke-static {v0, v7}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-eqz v5, :cond_4

    .line 231
    .line 232
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    check-cast v5, Ljava/util/Map$Entry;

    .line 237
    .line 238
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    check-cast v7, Ljava/lang/String;

    .line 243
    .line 244
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    iget-object v9, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v9, Lnet/thunderbird/core/common/state/debug/ValueFormatter;

    .line 251
    .line 252
    invoke-static {v9, v5}, Lnet/thunderbird/core/common/state/debug/ValueFormatter;->format$default(Lnet/thunderbird/core/common/state/debug/ValueFormatter;Ljava/lang/Object;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    const-string v9, ": "

    .line 257
    .line 258
    invoke-static {v7, v9, v5}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    invoke-static {p2, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    invoke-static {v5, v7}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    const-string v5, " updated data:"

    .line 290
    .line 291
    invoke-static {v0, v5}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-static {p2, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    invoke-static {v0, p2}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast p0, Lokhttp3/ConnectionPool;

    .line 312
    .line 313
    new-instance p1, Lnet/thunderbird/core/common/state/debug/DiffContext;

    .line 314
    .line 315
    invoke-direct {p1, v8, v4}, Lnet/thunderbird/core/common/state/debug/DiffContext;-><init>(IZ)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0, v2, v3, p1}, Lokhttp3/ConnectionPool;->buildDiff(Ljava/lang/Object;Ljava/lang/Object;Lnet/thunderbird/core/common/state/debug/DiffContext;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p0

    .line 329
    return-object p0
.end method

.method public clientInfo()Lcom/fsck/k9/mail/store/imap/ImapClientInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapClientInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/fsck/k9/storage/migrations/MigrationTo90;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fsck/k9/storage/migrations/MigrationTo90;->clientInfoAppName$delegate:Lkotlin/Lazy;

    .line 8
    .line 9
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/storage/migrations/MigrationTo90;->clientInfoAppVersion$delegate:Lkotlin/Lazy;

    .line 16
    .line 17
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v0, v1, p0}, Lcom/fsck/k9/mail/store/imap/ImapClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public deleteFile(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/BinaryBitmap;->getAttachmentFile(J)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 20
    .line 21
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 28
    .line 29
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const/4 p1, 0x1

    .line 38
    new-array p1, p1, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    aput-object p0, p1, p2

    .line 42
    .line 43
    const-string p0, "Couldn\'t delete message part file: %s"

    .line 44
    .line 45
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public evaluateAt(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/google/zxing/BinaryBitmap;->getCoefficient(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 v2, 0x1

    .line 14
    if-ne p1, v2, :cond_2

    .line 15
    .line 16
    array-length p0, v0

    .line 17
    move p1, v1

    .line 18
    :goto_0
    if-ge v1, p0, :cond_1

    .line 19
    .line 20
    aget v2, v0, v1

    .line 21
    .line 22
    sget-object v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 23
    .line 24
    xor-int/2addr p1, v2

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return p1

    .line 29
    :cond_2
    aget v1, v0, v1

    .line 30
    .line 31
    array-length v3, v0

    .line 32
    :goto_1
    if-ge v2, v3, :cond_3

    .line 33
    .line 34
    iget-object v4, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v4, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 37
    .line 38
    invoke-virtual {v4, p1, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    aget v4, v0, v2

    .line 43
    .line 44
    xor-int/2addr v1, v4

    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    return v1
.end method

.method public expect(C)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->readByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-char v0, v0

    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/BinaryBitmap;->unexpectedCharacterError(CZ)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    throw p0
.end method

.method public findDisallowedContentProviderAuthorities()Ljava/util/HashSet;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/content/Context;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/16 v1, 0x88

    .line 14
    .line 15
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-array p0, v0, [Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    .line 28
    .line 29
    array-length v2, p0

    .line 30
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 31
    .line 32
    .line 33
    array-length v2, p0

    .line 34
    move v3, v0

    .line 35
    :goto_1
    if-ge v3, v2, :cond_2

    .line 36
    .line 37
    aget-object v4, p0, v3

    .line 38
    .line 39
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    const-string v6, "de.cketti.safecontentresolver.ALLOW_INTERNAL_ACCESS"

    .line 44
    .line 45
    invoke-virtual {v5, v6, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 53
    .line 54
    const-string v5, ";"

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v1, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    return-object v1

    .line 67
    :catch_0
    move-exception p0

    .line 68
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    return-object p0
.end method

.method public fixIdentities()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    const-string v1, "accountUuids"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_0
    const-string v2, ","

    .line 21
    .line 22
    filled-new-array {v2}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x6

    .line 27
    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/lang/String;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v5, ".email."

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-static {v0, v4}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    if-nez v4, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iget-object v6, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v6, Lcom/fsck/k9/EmailAddressValidator;

    .line 86
    .line 87
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {v4}, Lcom/fsck/k9/EmailAddressValidator;->isValidAddressOnly(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_2

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    const-string v4, "please.edit@invalid"

    .line 98
    .line 99
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-static {v0, v5, v4}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    :goto_3
    return-void
.end method

.method public foundLiteral(Lcom/fsck/k9/mail/store/imap/ImapResponse;Lcom/fsck/k9/mail/filter/FixedLengthInputStream;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/mail/Part;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v1, "FETCH"

    .line 18
    .line 19
    invoke-static {p1, v1}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string p1, "Content-Transfer-Encoding"

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v1, 0x0

    .line 32
    aget-object p1, p1, v1

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const-string v2, "Content-Type"

    .line 38
    .line 39
    invoke-interface {v0, v2}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    aget-object v0, v0, v1

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Lokio/AsyncTimeout$Companion;

    .line 51
    .line 52
    invoke-virtual {p0, p1, v0, p2}, Lokio/AsyncTimeout$Companion;->createBody(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_0
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method

.method public get(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-static {p1}, Lokhttp3/Handshake$Companion;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    new-instance v2, Lkotlinx/serialization/internal/CacheEntry;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Lkotlinx/serialization/internal/CacheEntry;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v2, p0

    .line 38
    :cond_1
    :goto_0
    check-cast v2, Lkotlinx/serialization/internal/CacheEntry;

    .line 39
    .line 40
    iget-object p0, v2, Lkotlinx/serialization/internal/CacheEntry;->serializer:Lkotlinx/serialization/KSerializer;

    .line 41
    .line 42
    return-object p0
.end method

.method public get-gIAlu-s(Lkotlin/reflect/KClass;Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-static {p1}, Lokhttp3/Handshake$Companion;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    new-instance v2, Lkotlinx/serialization/internal/ParametrizedCacheEntry;

    .line 16
    .line 17
    invoke-direct {v2}, Lkotlinx/serialization/internal/ParametrizedCacheEntry;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v2, v0

    .line 28
    :cond_1
    :goto_0
    check-cast v2, Lkotlinx/serialization/internal/ParametrizedCacheEntry;

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    const/16 v1, 0xa

    .line 33
    .line 34
    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lkotlin/reflect/KType;

    .line 56
    .line 57
    new-instance v4, Lkotlinx/serialization/internal/KTypeWrapper;

    .line 58
    .line 59
    invoke-direct {v4, v3}, Lkotlinx/serialization/internal/KTypeWrapper;-><init>(Lkotlin/reflect/KType;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v1, v2, Lkotlinx/serialization/internal/ParametrizedCacheEntry;->serializers:Lj$/util/concurrent/ConcurrentHashMap;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-nez v2, :cond_4

    .line 73
    .line 74
    :try_start_0
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 77
    .line 78
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Lkotlinx/serialization/KSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    new-instance p1, Lkotlin/Result$Failure;

    .line 87
    .line 88
    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    move-object p0, p1

    .line 92
    :goto_2
    new-instance p1, Lkotlin/Result;

    .line 93
    .line 94
    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    if-nez p0, :cond_3

    .line 102
    .line 103
    move-object v2, p1

    .line 104
    goto :goto_3

    .line 105
    :cond_3
    move-object v2, p0

    .line 106
    :cond_4
    :goto_3
    check-cast v2, Lkotlin/Result;

    .line 107
    .line 108
    iget-object p0, v2, Lkotlin/Result;->value:Ljava/lang/Object;

    .line 109
    .line 110
    return-object p0
.end method

.method public getAttachmentFile(J)Ljava/io/File;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore$1;->getAttachmentDirectory()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/google/zxing/common/BitMatrix;

    .line 6
    .line 7
    if-nez v1, :cond_29

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lcom/google/zxing/common/HybridBinarizer;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_17

    .line 18
    .line 19
    :cond_0
    iget-object v2, v1, Lcom/google/zxing/common/HybridBinarizer;->source:Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 20
    .line 21
    iget v3, v2, Lcom/google/zxing/PlanarYUVLuminanceSource;->width:I

    .line 22
    .line 23
    iget v4, v2, Lcom/google/zxing/PlanarYUVLuminanceSource;->height:I

    .line 24
    .line 25
    const/16 v5, 0x28

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v8, 0x1

    .line 29
    if-lt v3, v5, :cond_18

    .line 30
    .line 31
    if-lt v4, v5, :cond_18

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getMatrix()[B

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    shr-int/lit8 v5, v3, 0x3

    .line 38
    .line 39
    and-int/lit8 v9, v3, 0x7

    .line 40
    .line 41
    if-eqz v9, :cond_1

    .line 42
    .line 43
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    :cond_1
    shr-int/lit8 v9, v4, 0x3

    .line 46
    .line 47
    and-int/lit8 v10, v4, 0x7

    .line 48
    .line 49
    if-eqz v10, :cond_2

    .line 50
    .line 51
    add-int/lit8 v9, v9, 0x1

    .line 52
    .line 53
    :cond_2
    add-int/lit8 v10, v4, -0x8

    .line 54
    .line 55
    add-int/lit8 v11, v3, -0x8

    .line 56
    .line 57
    const/4 v12, 0x2

    .line 58
    new-array v13, v12, [I

    .line 59
    .line 60
    aput v5, v13, v8

    .line 61
    .line 62
    aput v9, v13, v6

    .line 63
    .line 64
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 65
    .line 66
    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    check-cast v13, [[I

    .line 71
    .line 72
    move v14, v6

    .line 73
    :goto_0
    const/16 v15, 0x8

    .line 74
    .line 75
    if-ge v14, v9, :cond_d

    .line 76
    .line 77
    move/from16 v16, v6

    .line 78
    .line 79
    shl-int/lit8 v6, v14, 0x3

    .line 80
    .line 81
    if-le v6, v10, :cond_3

    .line 82
    .line 83
    move v6, v10

    .line 84
    :cond_3
    move/from16 v17, v8

    .line 85
    .line 86
    move/from16 v8, v16

    .line 87
    .line 88
    :goto_1
    if-ge v8, v5, :cond_c

    .line 89
    .line 90
    move/from16 v18, v12

    .line 91
    .line 92
    shl-int/lit8 v12, v8, 0x3

    .line 93
    .line 94
    if-le v12, v11, :cond_4

    .line 95
    .line 96
    move v12, v11

    .line 97
    :cond_4
    mul-int v19, v6, v3

    .line 98
    .line 99
    add-int v19, v19, v12

    .line 100
    .line 101
    move/from16 v12, v16

    .line 102
    .line 103
    move/from16 v20, v12

    .line 104
    .line 105
    move/from16 v21, v20

    .line 106
    .line 107
    const/16 v22, 0xff

    .line 108
    .line 109
    :goto_2
    if-ge v12, v15, :cond_a

    .line 110
    .line 111
    move-object/from16 v23, v2

    .line 112
    .line 113
    move/from16 v24, v6

    .line 114
    .line 115
    move/from16 v6, v16

    .line 116
    .line 117
    move/from16 v7, v21

    .line 118
    .line 119
    move/from16 v2, v22

    .line 120
    .line 121
    :goto_3
    if-ge v6, v15, :cond_7

    .line 122
    .line 123
    add-int v21, v19, v6

    .line 124
    .line 125
    aget-byte v15, v23, v21

    .line 126
    .line 127
    move/from16 v21, v6

    .line 128
    .line 129
    const/16 v6, 0xff

    .line 130
    .line 131
    and-int/2addr v15, v6

    .line 132
    add-int v20, v20, v15

    .line 133
    .line 134
    if-ge v15, v2, :cond_5

    .line 135
    .line 136
    move v2, v15

    .line 137
    :cond_5
    if-le v15, v7, :cond_6

    .line 138
    .line 139
    move v7, v15

    .line 140
    :cond_6
    add-int/lit8 v6, v21, 0x1

    .line 141
    .line 142
    const/16 v15, 0x8

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_7
    sub-int v6, v7, v2

    .line 146
    .line 147
    const/16 v15, 0x18

    .line 148
    .line 149
    if-le v6, v15, :cond_9

    .line 150
    .line 151
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 152
    .line 153
    add-int v19, v19, v3

    .line 154
    .line 155
    const/16 v6, 0x8

    .line 156
    .line 157
    if-ge v12, v6, :cond_9

    .line 158
    .line 159
    move/from16 v15, v16

    .line 160
    .line 161
    :goto_5
    if-ge v15, v6, :cond_8

    .line 162
    .line 163
    add-int v6, v19, v15

    .line 164
    .line 165
    aget-byte v6, v23, v6

    .line 166
    .line 167
    move/from16 v21, v2

    .line 168
    .line 169
    const/16 v2, 0xff

    .line 170
    .line 171
    and-int/2addr v6, v2

    .line 172
    add-int v20, v20, v6

    .line 173
    .line 174
    add-int/lit8 v15, v15, 0x1

    .line 175
    .line 176
    move/from16 v2, v21

    .line 177
    .line 178
    const/16 v6, 0x8

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_8
    move/from16 v21, v2

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_9
    move/from16 v21, v2

    .line 185
    .line 186
    add-int/lit8 v12, v12, 0x1

    .line 187
    .line 188
    add-int v19, v19, v3

    .line 189
    .line 190
    move/from16 v22, v21

    .line 191
    .line 192
    move-object/from16 v2, v23

    .line 193
    .line 194
    move/from16 v6, v24

    .line 195
    .line 196
    const/16 v15, 0x8

    .line 197
    .line 198
    move/from16 v21, v7

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_a
    move-object/from16 v23, v2

    .line 202
    .line 203
    move/from16 v24, v6

    .line 204
    .line 205
    shr-int/lit8 v2, v20, 0x6

    .line 206
    .line 207
    move/from16 v7, v22

    .line 208
    .line 209
    sub-int v6, v21, v7

    .line 210
    .line 211
    const/16 v15, 0x18

    .line 212
    .line 213
    if-gt v6, v15, :cond_b

    .line 214
    .line 215
    div-int/lit8 v2, v7, 0x2

    .line 216
    .line 217
    if-lez v14, :cond_b

    .line 218
    .line 219
    if-lez v8, :cond_b

    .line 220
    .line 221
    add-int/lit8 v6, v14, -0x1

    .line 222
    .line 223
    aget-object v6, v13, v6

    .line 224
    .line 225
    aget v12, v6, v8

    .line 226
    .line 227
    aget-object v15, v13, v14

    .line 228
    .line 229
    add-int/lit8 v19, v8, -0x1

    .line 230
    .line 231
    aget v15, v15, v19

    .line 232
    .line 233
    mul-int/lit8 v15, v15, 0x2

    .line 234
    .line 235
    add-int/2addr v15, v12

    .line 236
    aget v6, v6, v19

    .line 237
    .line 238
    add-int/2addr v15, v6

    .line 239
    div-int/lit8 v6, v15, 0x4

    .line 240
    .line 241
    if-ge v7, v6, :cond_b

    .line 242
    .line 243
    move v2, v6

    .line 244
    :cond_b
    aget-object v6, v13, v14

    .line 245
    .line 246
    aput v2, v6, v8

    .line 247
    .line 248
    add-int/lit8 v8, v8, 0x1

    .line 249
    .line 250
    move/from16 v12, v18

    .line 251
    .line 252
    move-object/from16 v2, v23

    .line 253
    .line 254
    move/from16 v6, v24

    .line 255
    .line 256
    const/16 v15, 0x8

    .line 257
    .line 258
    goto/16 :goto_1

    .line 259
    .line 260
    :cond_c
    move-object/from16 v23, v2

    .line 261
    .line 262
    move/from16 v18, v12

    .line 263
    .line 264
    add-int/lit8 v14, v14, 0x1

    .line 265
    .line 266
    move/from16 v6, v16

    .line 267
    .line 268
    move/from16 v8, v17

    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_d
    move-object/from16 v23, v2

    .line 273
    .line 274
    move/from16 v16, v6

    .line 275
    .line 276
    move/from16 v18, v12

    .line 277
    .line 278
    new-instance v2, Lcom/google/zxing/common/BitMatrix;

    .line 279
    .line 280
    invoke-direct {v2, v3, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 281
    .line 282
    .line 283
    move/from16 v4, v16

    .line 284
    .line 285
    :goto_6
    if-ge v4, v9, :cond_17

    .line 286
    .line 287
    shl-int/lit8 v6, v4, 0x3

    .line 288
    .line 289
    if-le v6, v10, :cond_e

    .line 290
    .line 291
    move v6, v10

    .line 292
    :cond_e
    add-int/lit8 v7, v9, -0x3

    .line 293
    .line 294
    move/from16 v8, v18

    .line 295
    .line 296
    if-ge v4, v8, :cond_f

    .line 297
    .line 298
    const/4 v8, 0x2

    .line 299
    goto :goto_7

    .line 300
    :cond_f
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    move v8, v7

    .line 305
    :goto_7
    move/from16 v7, v16

    .line 306
    .line 307
    :goto_8
    if-ge v7, v5, :cond_16

    .line 308
    .line 309
    shl-int/lit8 v12, v7, 0x3

    .line 310
    .line 311
    if-le v12, v11, :cond_10

    .line 312
    .line 313
    move v12, v11

    .line 314
    :cond_10
    add-int/lit8 v14, v5, -0x3

    .line 315
    .line 316
    const/4 v15, 0x2

    .line 317
    if-ge v7, v15, :cond_11

    .line 318
    .line 319
    move v14, v15

    .line 320
    goto :goto_9

    .line 321
    :cond_11
    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    .line 322
    .line 323
    .line 324
    move-result v18

    .line 325
    move/from16 v14, v18

    .line 326
    .line 327
    :goto_9
    const/16 v17, -0x2

    .line 328
    .line 329
    move/from16 v19, v4

    .line 330
    .line 331
    move/from16 v4, v17

    .line 332
    .line 333
    move/from16 v17, v16

    .line 334
    .line 335
    :goto_a
    if-gt v4, v15, :cond_12

    .line 336
    .line 337
    add-int v15, v8, v4

    .line 338
    .line 339
    aget-object v15, v13, v15

    .line 340
    .line 341
    add-int/lit8 v20, v14, -0x2

    .line 342
    .line 343
    aget v20, v15, v20

    .line 344
    .line 345
    add-int/lit8 v21, v14, -0x1

    .line 346
    .line 347
    aget v21, v15, v21

    .line 348
    .line 349
    add-int v20, v20, v21

    .line 350
    .line 351
    aget v21, v15, v14

    .line 352
    .line 353
    add-int v20, v20, v21

    .line 354
    .line 355
    add-int/lit8 v21, v14, 0x1

    .line 356
    .line 357
    aget v21, v15, v21

    .line 358
    .line 359
    add-int v20, v20, v21

    .line 360
    .line 361
    const/16 v18, 0x2

    .line 362
    .line 363
    add-int/lit8 v21, v14, 0x2

    .line 364
    .line 365
    aget v15, v15, v21

    .line 366
    .line 367
    add-int v20, v20, v15

    .line 368
    .line 369
    add-int v17, v20, v17

    .line 370
    .line 371
    add-int/lit8 v4, v4, 0x1

    .line 372
    .line 373
    move/from16 v15, v18

    .line 374
    .line 375
    goto :goto_a

    .line 376
    :cond_12
    move/from16 v18, v15

    .line 377
    .line 378
    div-int/lit8 v4, v17, 0x19

    .line 379
    .line 380
    mul-int v14, v6, v3

    .line 381
    .line 382
    add-int/2addr v14, v12

    .line 383
    move/from16 v20, v5

    .line 384
    .line 385
    move/from16 v15, v16

    .line 386
    .line 387
    :goto_b
    const/16 v5, 0x8

    .line 388
    .line 389
    if-ge v15, v5, :cond_15

    .line 390
    .line 391
    move/from16 v17, v6

    .line 392
    .line 393
    move/from16 v6, v16

    .line 394
    .line 395
    :goto_c
    if-ge v6, v5, :cond_14

    .line 396
    .line 397
    add-int v21, v14, v6

    .line 398
    .line 399
    aget-byte v5, v23, v21

    .line 400
    .line 401
    move/from16 v21, v6

    .line 402
    .line 403
    const/16 v6, 0xff

    .line 404
    .line 405
    and-int/2addr v5, v6

    .line 406
    if-gt v5, v4, :cond_13

    .line 407
    .line 408
    add-int v6, v12, v21

    .line 409
    .line 410
    add-int v5, v17, v15

    .line 411
    .line 412
    invoke-virtual {v2, v6, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 413
    .line 414
    .line 415
    :cond_13
    add-int/lit8 v6, v21, 0x1

    .line 416
    .line 417
    const/16 v5, 0x8

    .line 418
    .line 419
    goto :goto_c

    .line 420
    :cond_14
    add-int/lit8 v15, v15, 0x1

    .line 421
    .line 422
    add-int/2addr v14, v3

    .line 423
    move/from16 v6, v17

    .line 424
    .line 425
    goto :goto_b

    .line 426
    :cond_15
    move/from16 v17, v6

    .line 427
    .line 428
    add-int/lit8 v7, v7, 0x1

    .line 429
    .line 430
    move/from16 v4, v19

    .line 431
    .line 432
    move/from16 v5, v20

    .line 433
    .line 434
    goto :goto_8

    .line 435
    :cond_16
    move/from16 v19, v4

    .line 436
    .line 437
    move/from16 v20, v5

    .line 438
    .line 439
    const/16 v18, 0x2

    .line 440
    .line 441
    add-int/lit8 v4, v19, 0x1

    .line 442
    .line 443
    goto/16 :goto_6

    .line 444
    .line 445
    :cond_17
    iput-object v2, v1, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 446
    .line 447
    goto/16 :goto_16

    .line 448
    .line 449
    :cond_18
    move/from16 v16, v6

    .line 450
    .line 451
    move/from16 v17, v8

    .line 452
    .line 453
    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    .line 454
    .line 455
    invoke-direct {v5, v3, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 456
    .line 457
    .line 458
    iget-object v6, v1, Lcom/google/zxing/common/HybridBinarizer;->luminances:[B

    .line 459
    .line 460
    array-length v6, v6

    .line 461
    if-ge v6, v3, :cond_19

    .line 462
    .line 463
    new-array v6, v3, [B

    .line 464
    .line 465
    iput-object v6, v1, Lcom/google/zxing/common/HybridBinarizer;->luminances:[B

    .line 466
    .line 467
    :cond_19
    move/from16 v6, v16

    .line 468
    .line 469
    :goto_d
    iget-object v7, v1, Lcom/google/zxing/common/HybridBinarizer;->buckets:[I

    .line 470
    .line 471
    const/16 v8, 0x20

    .line 472
    .line 473
    if-ge v6, v8, :cond_1a

    .line 474
    .line 475
    aput v16, v7, v6

    .line 476
    .line 477
    add-int/lit8 v6, v6, 0x1

    .line 478
    .line 479
    goto :goto_d

    .line 480
    :cond_1a
    move/from16 v6, v17

    .line 481
    .line 482
    :goto_e
    const/4 v8, 0x5

    .line 483
    if-ge v6, v8, :cond_1c

    .line 484
    .line 485
    mul-int v9, v4, v6

    .line 486
    .line 487
    div-int/2addr v9, v8

    .line 488
    iget-object v10, v1, Lcom/google/zxing/common/HybridBinarizer;->luminances:[B

    .line 489
    .line 490
    invoke-virtual {v2, v9, v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getRow(I[B)[B

    .line 491
    .line 492
    .line 493
    move-result-object v9

    .line 494
    mul-int/lit8 v10, v3, 0x4

    .line 495
    .line 496
    div-int/2addr v10, v8

    .line 497
    div-int/lit8 v8, v3, 0x5

    .line 498
    .line 499
    :goto_f
    if-ge v8, v10, :cond_1b

    .line 500
    .line 501
    aget-byte v11, v9, v8

    .line 502
    .line 503
    const/16 v12, 0xff

    .line 504
    .line 505
    and-int/2addr v11, v12

    .line 506
    shr-int/lit8 v11, v11, 0x3

    .line 507
    .line 508
    aget v12, v7, v11

    .line 509
    .line 510
    add-int/lit8 v12, v12, 0x1

    .line 511
    .line 512
    aput v12, v7, v11

    .line 513
    .line 514
    add-int/lit8 v8, v8, 0x1

    .line 515
    .line 516
    goto :goto_f

    .line 517
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    .line 518
    .line 519
    goto :goto_e

    .line 520
    :cond_1c
    array-length v6, v7

    .line 521
    move/from16 v8, v16

    .line 522
    .line 523
    move v9, v8

    .line 524
    move v10, v9

    .line 525
    move v11, v10

    .line 526
    :goto_10
    if-ge v8, v6, :cond_1f

    .line 527
    .line 528
    aget v12, v7, v8

    .line 529
    .line 530
    if-le v12, v9, :cond_1d

    .line 531
    .line 532
    move v11, v8

    .line 533
    move v9, v12

    .line 534
    :cond_1d
    if-le v12, v10, :cond_1e

    .line 535
    .line 536
    move v10, v12

    .line 537
    :cond_1e
    add-int/lit8 v8, v8, 0x1

    .line 538
    .line 539
    goto :goto_10

    .line 540
    :cond_1f
    move/from16 v8, v16

    .line 541
    .line 542
    move v9, v8

    .line 543
    move v12, v9

    .line 544
    :goto_11
    if-ge v8, v6, :cond_21

    .line 545
    .line 546
    sub-int v13, v8, v11

    .line 547
    .line 548
    aget v14, v7, v8

    .line 549
    .line 550
    mul-int/2addr v14, v13

    .line 551
    mul-int/2addr v14, v13

    .line 552
    if-le v14, v12, :cond_20

    .line 553
    .line 554
    move v9, v8

    .line 555
    move v12, v14

    .line 556
    :cond_20
    add-int/lit8 v8, v8, 0x1

    .line 557
    .line 558
    goto :goto_11

    .line 559
    :cond_21
    if-le v11, v9, :cond_22

    .line 560
    .line 561
    goto :goto_12

    .line 562
    :cond_22
    move/from16 v25, v11

    .line 563
    .line 564
    move v11, v9

    .line 565
    move/from16 v9, v25

    .line 566
    .line 567
    :goto_12
    sub-int v8, v11, v9

    .line 568
    .line 569
    div-int/lit8 v6, v6, 0x10

    .line 570
    .line 571
    if-le v8, v6, :cond_28

    .line 572
    .line 573
    add-int/lit8 v6, v11, -0x1

    .line 574
    .line 575
    const/4 v8, -0x1

    .line 576
    move v12, v8

    .line 577
    move v8, v6

    .line 578
    :goto_13
    if-le v6, v9, :cond_24

    .line 579
    .line 580
    sub-int v13, v6, v9

    .line 581
    .line 582
    mul-int/2addr v13, v13

    .line 583
    sub-int v14, v11, v6

    .line 584
    .line 585
    mul-int/2addr v14, v13

    .line 586
    aget v13, v7, v6

    .line 587
    .line 588
    sub-int v13, v10, v13

    .line 589
    .line 590
    mul-int/2addr v13, v14

    .line 591
    if-le v13, v12, :cond_23

    .line 592
    .line 593
    move v8, v6

    .line 594
    move v12, v13

    .line 595
    :cond_23
    add-int/lit8 v6, v6, -0x1

    .line 596
    .line 597
    goto :goto_13

    .line 598
    :cond_24
    shl-int/lit8 v6, v8, 0x3

    .line 599
    .line 600
    invoke-virtual {v2}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getMatrix()[B

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    move/from16 v7, v16

    .line 605
    .line 606
    :goto_14
    if-ge v7, v4, :cond_27

    .line 607
    .line 608
    mul-int v8, v7, v3

    .line 609
    .line 610
    move/from16 v9, v16

    .line 611
    .line 612
    :goto_15
    if-ge v9, v3, :cond_26

    .line 613
    .line 614
    add-int v10, v8, v9

    .line 615
    .line 616
    aget-byte v10, v2, v10

    .line 617
    .line 618
    const/16 v12, 0xff

    .line 619
    .line 620
    and-int/2addr v10, v12

    .line 621
    if-ge v10, v6, :cond_25

    .line 622
    .line 623
    invoke-virtual {v5, v9, v7}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 624
    .line 625
    .line 626
    :cond_25
    add-int/lit8 v9, v9, 0x1

    .line 627
    .line 628
    goto :goto_15

    .line 629
    :cond_26
    const/16 v12, 0xff

    .line 630
    .line 631
    add-int/lit8 v7, v7, 0x1

    .line 632
    .line 633
    goto :goto_14

    .line 634
    :cond_27
    iput-object v5, v1, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 635
    .line 636
    :goto_16
    iget-object v2, v1, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 637
    .line 638
    :goto_17
    iput-object v2, v0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 639
    .line 640
    goto :goto_18

    .line 641
    :cond_28
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    throw v0

    .line 646
    :cond_29
    :goto_18
    iget-object v0, v0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 647
    .line 648
    check-cast v0, Lcom/google/zxing/common/BitMatrix;

    .line 649
    .line 650
    return-object v0
.end method

.method public getCoefficient(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, [I

    .line 4
    .line 5
    array-length v0, p0

    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    sub-int/2addr v0, p1

    .line 9
    aget p0, p0, v0

    .line 10
    .line 11
    return p0
.end method

.method public getDegree()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, [I

    .line 4
    .line 5
    array-length p0, p0

    .line 6
    add-int/lit8 p0, p0, -0x1

    .line 7
    .line 8
    return p0
.end method

.method public getLogLabel()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public isExpungeImmediately()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getExpungePolicy()Lnet/thunderbird/core/android/account/Expunge;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v0, Lnet/thunderbird/core/android/account/Expunge;->EXPUNGE_IMMEDIATELY:Lnet/thunderbird/core/android/account/Expunge;

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public isSubscribedFoldersOnly()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSubscribedFoldersOnly()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public isZero()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, [I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aget p0, p0, v0

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    return v0
.end method

.method public multiply(I)Lcom/google/zxing/BinaryBitmap;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p0, v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/BinaryBitmap;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    if-ne p1, v2, :cond_1

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    array-length p0, v0

    .line 19
    new-array v2, p0, [I

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, p0, :cond_2

    .line 23
    .line 24
    aget v4, v0, v3

    .line 25
    .line 26
    invoke-virtual {v1, v4, p1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    aput v4, v2, v3

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    new-instance p0, Lcom/google/zxing/BinaryBitmap;

    .line 36
    .line 37
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 38
    .line 39
    .line 40
    return-object p0
.end method

.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const v1, 0x7f09018e

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ne p2, v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getSelectedMessages$1()Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 30
    .line 31
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 38
    .line 39
    iget-boolean v0, v0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDelete:Z

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessages:Ljava/util/List;

    .line 44
    .line 45
    const p2, 0x7f09019b

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->showDialog$2(I)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->showingThreadedList:Z

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 65
    .line 66
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    const/16 v1, 0x15

    .line 69
    .line 70
    invoke-direct {v0, v1, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p2, v0}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 86
    .line 87
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;

    .line 88
    .line 89
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;-><init>(Lcom/fsck/k9/controller/MessagingController;Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p2, v0}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_2
    const v1, 0x7f09026e

    .line 98
    .line 99
    .line 100
    if-ne p2, v1, :cond_3

    .line 101
    .line 102
    sget-object p1, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 103
    .line 104
    invoke-static {p0, p1, v3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->access$setFlagForSelected(Lcom/fsck/k9/ui/messagelist/MessageListFragment;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 105
    .line 106
    .line 107
    return v3

    .line 108
    :cond_3
    const v1, 0x7f09026f

    .line 109
    .line 110
    .line 111
    if-ne p2, v1, :cond_4

    .line 112
    .line 113
    sget-object p1, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 114
    .line 115
    invoke-static {p0, p1, v2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->access$setFlagForSelected(Lcom/fsck/k9/ui/messagelist/MessageListFragment;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 116
    .line 117
    .line 118
    return v3

    .line 119
    :cond_4
    const v1, 0x7f0901f1

    .line 120
    .line 121
    .line 122
    if-ne p2, v1, :cond_5

    .line 123
    .line 124
    sget-object p1, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 125
    .line 126
    invoke-static {p0, p1, v3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->access$setFlagForSelected(Lcom/fsck/k9/ui/messagelist/MessageListFragment;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 127
    .line 128
    .line 129
    return v3

    .line 130
    :cond_5
    const v1, 0x7f090466

    .line 131
    .line 132
    .line 133
    if-ne p2, v1, :cond_6

    .line 134
    .line 135
    sget-object p1, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 136
    .line 137
    invoke-static {p0, p1, v2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->access$setFlagForSelected(Lcom/fsck/k9/ui/messagelist/MessageListFragment;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 138
    .line 139
    .line 140
    return v3

    .line 141
    :cond_6
    const v1, 0x7f0903a1

    .line 142
    .line 143
    .line 144
    if-ne p2, v1, :cond_8

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getStateSnapshot()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMessages()Lkotlinx/collections/immutable/ImmutableList;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Lkotlin/collections/AbstractCollection;

    .line 155
    .line 156
    invoke-virtual {p1}, Lkotlin/collections/AbstractCollection;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_7

    .line 161
    .line 162
    return v3

    .line 163
    :cond_7
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getViewModel()Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    sget-object p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SelectAll;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SelectAll;

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->event(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    return v3

    .line 173
    :cond_8
    const v1, 0x7f090081

    .line 174
    .line 175
    .line 176
    if-ne p2, v1, :cond_b

    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getSelectedMessages$1()Ljava/util/ArrayList;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    sget-object v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;

    .line 183
    .line 184
    invoke-virtual {p0, p2, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->checkCopyOrMovePossible(Ljava/util/List;Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-nez v0, :cond_9

    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_9
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->showingThreadedList:Z

    .line 193
    .line 194
    if-eqz v0, :cond_a

    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 201
    .line 202
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->archiveOperations:Lcom/beetstra/jutf7/Base64Util;

    .line 203
    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    new-instance v0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda0;

    .line 208
    .line 209
    invoke-direct {v0, p0, v3}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda0;-><init>(Lcom/beetstra/jutf7/Base64Util;I)V

    .line 210
    .line 211
    .line 212
    new-instance v1, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;

    .line 213
    .line 214
    const-string v4, "archiveThreads"

    .line 215
    .line 216
    invoke-direct {v1, p0, v4, v0, v2}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 217
    .line 218
    .line 219
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 220
    .line 221
    const/16 v2, 0x14

    .line 222
    .line 223
    invoke-direct {v0, v2, v1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p0, Lcom/fsck/k9/controller/MessagingController;

    .line 229
    .line 230
    invoke-virtual {p0, p2, v0}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_a
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 240
    .line 241
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->archiveOperations:Lcom/beetstra/jutf7/Base64Util;

    .line 242
    .line 243
    invoke-virtual {p0, p2}, Lcom/beetstra/jutf7/Base64Util;->archiveMessages(Ljava/util/List;)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_b
    const v1, 0x7f0903e5

    .line 249
    .line 250
    .line 251
    if-ne p2, v1, :cond_d

    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getSelectedMessages$1()Ljava/util/ArrayList;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 262
    .line 263
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 264
    .line 265
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 270
    .line 271
    iget-boolean v0, v0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmSpam:Z

    .line 272
    .line 273
    if-eqz v0, :cond_c

    .line 274
    .line 275
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessages:Ljava/util/List;

    .line 276
    .line 277
    const p2, 0x7f09019f

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, p2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->showDialog$2(I)V

    .line 281
    .line 282
    .line 283
    goto :goto_0

    .line 284
    :cond_c
    invoke-virtual {p0, p2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->onSpamConfirmed$1(Ljava/util/List;)V

    .line 285
    .line 286
    .line 287
    goto :goto_0

    .line 288
    :cond_d
    const v0, 0x7f0902c5

    .line 289
    .line 290
    .line 291
    if-ne p2, v0, :cond_e

    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getSelectedMessages$1()Ljava/util/ArrayList;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    invoke-virtual {p0, p2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->onMove$1(Ljava/util/List;)V

    .line 298
    .line 299
    .line 300
    goto :goto_0

    .line 301
    :cond_e
    const v0, 0x7f0902c6

    .line 302
    .line 303
    .line 304
    if-ne p2, v0, :cond_10

    .line 305
    .line 306
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getSelectedMessages$1()Ljava/util/ArrayList;

    .line 307
    .line 308
    .line 309
    move-result-object v9

    .line 310
    iget-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 311
    .line 312
    if-eqz p2, :cond_f

    .line 313
    .line 314
    iget-object p2, p2, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 315
    .line 316
    if-eqz p2, :cond_f

    .line 317
    .line 318
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    iget-wide v7, v1, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, p2}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    iget-object v5, v0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 337
    .line 338
    new-instance v4, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;

    .line 339
    .line 340
    const/4 v10, 0x3

    .line 341
    invoke-direct/range {v4 .. v10}, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;I)V

    .line 342
    .line 343
    .line 344
    const-string p2, "moveToDrafts"

    .line 345
    .line 346
    invoke-virtual {v5, p2, v4}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 347
    .line 348
    .line 349
    :cond_f
    const/4 p2, 0x0

    .line 350
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessages:Ljava/util/List;

    .line 351
    .line 352
    goto :goto_0

    .line 353
    :cond_10
    const v0, 0x7f09015c

    .line 354
    .line 355
    .line 356
    if-ne p2, v0, :cond_11

    .line 357
    .line 358
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getSelectedMessages$1()Ljava/util/ArrayList;

    .line 359
    .line 360
    .line 361
    move-result-object p2

    .line 362
    invoke-virtual {p0, p2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->onCopy$1(Ljava/util/List;)V

    .line 363
    .line 364
    .line 365
    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 366
    .line 367
    .line 368
    return v3

    .line 369
    :cond_11
    return v2
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 14
    .line 15
    iget v4, v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    .line 16
    .line 17
    iget v5, v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 18
    .line 19
    iget v0, v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->arrayPoolSize:I

    .line 20
    .line 21
    iget-object v6, v2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 22
    .line 23
    const/16 v7, 0x207

    .line 24
    .line 25
    invoke-virtual {v6, v7}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    const/16 v8, 0x20

    .line 30
    .line 31
    invoke-virtual {v6, v8}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget-object v8, v3, Lcom/fsck/k9/mailstore/LocalFolder$8;->this$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 38
    .line 39
    iget v9, v7, Landroidx/core/graphics/Insets;->top:I

    .line 40
    .line 41
    iget v10, v7, Landroidx/core/graphics/Insets;->right:I

    .line 42
    .line 43
    iget v11, v7, Landroidx/core/graphics/Insets;->left:I

    .line 44
    .line 45
    iput v9, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    const/4 v13, 0x1

    .line 52
    if-ne v9, v13, :cond_0

    .line 53
    .line 54
    move v9, v13

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v9, 0x0

    .line 57
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 58
    .line 59
    .line 60
    move-result v14

    .line 61
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 62
    .line 63
    .line 64
    move-result v15

    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 66
    .line 67
    .line 68
    move-result v16

    .line 69
    iget-boolean v12, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    .line 70
    .line 71
    if-eqz v12, :cond_1

    .line 72
    .line 73
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    iput v14, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    .line 78
    .line 79
    add-int/2addr v14, v0

    .line 80
    :cond_1
    iget-boolean v0, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    if-eqz v9, :cond_2

    .line 85
    .line 86
    move v0, v5

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    move v0, v4

    .line 89
    :goto_1
    add-int v15, v0, v11

    .line 90
    .line 91
    :cond_3
    iget-boolean v0, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    .line 92
    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    if-eqz v9, :cond_4

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    move v4, v5

    .line 99
    :goto_2
    add-int v16, v4, v10

    .line 100
    .line 101
    :cond_5
    move/from16 v0, v16

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 108
    .line 109
    iget-boolean v5, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    .line 110
    .line 111
    if-eqz v5, :cond_6

    .line 112
    .line 113
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 114
    .line 115
    if-eq v5, v11, :cond_6

    .line 116
    .line 117
    iput v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 118
    .line 119
    move v5, v13

    .line 120
    goto :goto_3

    .line 121
    :cond_6
    const/4 v5, 0x0

    .line 122
    :goto_3
    iget-boolean v9, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    .line 123
    .line 124
    if-eqz v9, :cond_7

    .line 125
    .line 126
    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 127
    .line 128
    if-eq v9, v10, :cond_7

    .line 129
    .line 130
    iput v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 131
    .line 132
    move v5, v13

    .line 133
    :cond_7
    iget-boolean v9, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z

    .line 134
    .line 135
    if-eqz v9, :cond_8

    .line 136
    .line 137
    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 138
    .line 139
    iget v7, v7, Landroidx/core/graphics/Insets;->top:I

    .line 140
    .line 141
    if-eq v9, v7, :cond_8

    .line 142
    .line 143
    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_8
    move v13, v5

    .line 147
    :goto_4
    if-eqz v13, :cond_9

    .line 148
    .line 149
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .line 151
    .line 152
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    invoke-virtual {v1, v15, v4, v0, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 157
    .line 158
    .line 159
    iget-boolean v0, v3, Lcom/fsck/k9/mailstore/LocalFolder$8;->val$includeDeleted:Z

    .line 160
    .line 161
    if-eqz v0, :cond_a

    .line 162
    .line 163
    iget v1, v6, Landroidx/core/graphics/Insets;->bottom:I

    .line 164
    .line 165
    iput v1, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    .line 166
    .line 167
    :cond_a
    if-nez v12, :cond_c

    .line 168
    .line 169
    if-eqz v0, :cond_b

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_b
    return-object v2

    .line 173
    :cond_c
    :goto_5
    invoke-virtual {v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight()V

    .line 174
    .line 175
    .line 176
    return-object v2
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0e000b

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/BinaryBitmap;->setContextCapabilities$1(Lnet/thunderbird/core/android/account/LegacyAccount;Landroid/view/Menu;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getViewModel()Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$DeselectAll;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$DeselectAll;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->event(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0903a1

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 12
    .line 13
    const p1, 0x7f09026e

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 17
    .line 18
    .line 19
    const p1, 0x7f09026f

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 23
    .line 24
    .line 25
    const p1, 0x7f0901f1

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 29
    .line 30
    .line 31
    const p1, 0x7f090466

    .line 32
    .line 33
    .line 34
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 40
    .line 41
    iget-boolean v0, p1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleAccountMode:Z

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    if-nez v0, :cond_5

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getStateSnapshot()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMessages()Lkotlinx/collections/immutable/ImmutableList;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    move-object v4, v3

    .line 74
    check-cast v4, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 75
    .line 76
    iget-boolean v4, v4, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->selected:Z

    .line 77
    .line 78
    if-eqz v4, :cond_0

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_2

    .line 98
    .line 99
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 104
    .line 105
    iget-object v3, v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 106
    .line 107
    iget-object v3, v3, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 108
    .line 109
    iget-object v3, v3, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getAccountManager$2()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v4, v3}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    if-eqz v3, :cond_3

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_4
    const p1, 0x7f0902c5

    .line 155
    .line 156
    .line 157
    const v0, 0x7f09015c

    .line 158
    .line 159
    .line 160
    invoke-static {p2, p1, v1, v0, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 161
    .line 162
    .line 163
    const p1, 0x7f090081

    .line 164
    .line 165
    .line 166
    const v0, 0x7f0903e5

    .line 167
    .line 168
    .line 169
    const/4 v3, 0x0

    .line 170
    invoke-static {p2, p1, v3, v0, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 188
    .line 189
    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/BinaryBitmap;->setContextCapabilities$1(Lnet/thunderbird/core/android/account/LegacyAccount;Landroid/view/Menu;)V

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_5
    return v1
.end method

.method public openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 6

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "content"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Lcom/google/zxing/BinaryBitmap;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    iget-object v3, v2, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Ljava/util/HashSet;

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/google/zxing/BinaryBitmap;->findDisallowedContentProviderAuthorities()Ljava/util/HashSet;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iput-object v3, v2, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    move-object p0, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    iget-object v3, v2, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Ljava/util/HashSet;

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit v2

    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 53
    .line 54
    const-string p1, "content URI is owned by the application itself. Content provider is not explicitly allowed: "

    .line 55
    .line 56
    invoke-static {p1, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p0

    .line 66
    :cond_2
    :goto_2
    const-string v1, "file"

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Landroid/content/ContentResolver;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_3
    new-instance p0, Ljava/io/File;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/high16 p1, 0x10000000

    .line 93
    .line 94
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    :try_start_2
    invoke-static {p0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    iget p0, p0, Landroid/system/StructStat;->st_uid:I
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 107
    .line 108
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eq p0, p1, :cond_4

    .line 113
    .line 114
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    .line 115
    .line 116
    const-wide/16 v2, 0x0

    .line 117
    .line 118
    const-wide/16 v4, -0x1

    .line 119
    .line 120
    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 121
    .line 122
    .line 123
    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    .line 124
    .line 125
    .line 126
    move-result-object p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 127
    return-object p0

    .line 128
    :catch_0
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 129
    .line 130
    const-string p1, "Unable to create stream"

    .line 131
    .line 132
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :cond_4
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 137
    .line 138
    const-string p1, "File is owned by the application itself"

    .line 139
    .line 140
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :catch_1
    move-exception v0

    .line 145
    move-object p0, v0

    .line 146
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1

    .line 156
    :cond_5
    const-string p0, "Argument \'uri\' must not be null"

    .line 157
    .line 158
    invoke-static {p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const/4 p0, 0x0

    .line 162
    return-object p0
.end method

.method public parseEhloLine(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 12

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Ljava/lang/String;

    .line 19
    .line 20
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/16 v5, 0x5b

    .line 34
    .line 35
    const/16 v6, 0x41

    .line 36
    .line 37
    const/16 v7, 0x3a

    .line 38
    .line 39
    const/16 v8, 0x30

    .line 40
    .line 41
    if-gt v8, v4, :cond_0

    .line 42
    .line 43
    if-ge v4, v7, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    if-gt v6, v4, :cond_1

    .line 47
    .line 48
    if-ge v4, v5, :cond_1

    .line 49
    .line 50
    :goto_0
    move v4, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v4, v2

    .line 53
    :goto_1
    const/4 v9, 0x0

    .line 54
    if-eqz v4, :cond_b

    .line 55
    .line 56
    move v4, v2

    .line 57
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    if-ge v4, v10, :cond_5

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-gt v8, v10, :cond_2

    .line 68
    .line 69
    if-ge v10, v7, :cond_2

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_2
    if-gt v6, v10, :cond_3

    .line 73
    .line 74
    if-ge v10, v5, :cond_3

    .line 75
    .line 76
    :goto_3
    move v11, v1

    .line 77
    goto :goto_4

    .line 78
    :cond_3
    move v11, v2

    .line 79
    :goto_4
    if-nez v11, :cond_4

    .line 80
    .line 81
    const/16 v11, 0x2d

    .line 82
    .line 83
    if-ne v10, v11, :cond_b

    .line 84
    .line 85
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    sub-int/2addr v4, v1

    .line 93
    if-gt v1, v4, :cond_9

    .line 94
    .line 95
    move v5, v1

    .line 96
    :goto_5
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_8

    .line 107
    .line 108
    move v7, v2

    .line 109
    :goto_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-ge v7, v8, :cond_7

    .line 114
    .line 115
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    const/16 v10, 0x21

    .line 120
    .line 121
    if-gt v10, v8, :cond_6

    .line 122
    .line 123
    const/16 v10, 0x7f

    .line 124
    .line 125
    if-ge v8, v10, :cond_6

    .line 126
    .line 127
    add-int/lit8 v7, v7, 0x1

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_6
    const-string p2, "EHLO parameter contains invalid character"

    .line 131
    .line 132
    invoke-virtual {p0, p2, v2}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    throw v9

    .line 136
    :cond_7
    if-eq v5, v4, :cond_9

    .line 137
    .line 138
    add-int/lit8 v5, v5, 0x1

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_8
    const-string p2, "EHLO parameter must not be empty"

    .line 142
    .line 143
    invoke-virtual {p0, p2, v2}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 144
    .line 145
    .line 146
    throw v9

    .line 147
    :cond_9
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->drop(ILjava/util/List;)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-nez v4, :cond_a

    .line 156
    .line 157
    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_a
    const-string p2, "Same EHLO keyword present in more than one response line"

    .line 162
    .line 163
    invoke-virtual {p0, p2, v2}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 164
    .line 165
    .line 166
    throw v9

    .line 167
    :cond_b
    const-string p2, "EHLO keyword contains invalid character"

    .line 168
    .line 169
    invoke-virtual {p0, p2, v2}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 170
    .line 171
    .line 172
    throw v9
    :try_end_0
    .catch Lcom/fsck/k9/mail/transport/smtp/SmtpResponseParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :catch_0
    new-array p0, v1, [Ljava/lang/Object;

    .line 174
    .line 175
    aput-object p1, p0, v2

    .line 176
    .line 177
    const-string p1, "Ignoring EHLO keyword line: %s"

    .line 178
    .line 179
    invoke-static {p1, p0}, Lcom/bumptech/glide/GlideBuilder$1;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    return-void
.end method

.method public parserError(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-object p2, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 4
    .line 5
    invoke-interface {p2}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lokio/Buffer;

    .line 14
    .line 15
    invoke-virtual {p0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p2, "\r\n"

    .line 20
    .line 21
    const-string v0, "\n"

    .line 22
    .line 23
    invoke-static {p0, p2, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 p2, 0x1

    .line 28
    new-array p2, p2, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    aput-object p0, p2, v0

    .line 32
    .line 33
    const-string p0, "SMTP response data on parser error:\n%s"

    .line 34
    .line 35
    invoke-static {p0, p2}, Lcom/bumptech/glide/GlideBuilder$1;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    new-instance p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponseParserException;

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public persist(Lorg/slf4j/event/EventRecodingLogger;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/fsck/k9/preferences/K9StorageEditor;->removals:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x1

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Ljava/lang/String;

    .line 27
    .line 28
    iget-object v6, p1, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v6, Landroid/database/sqlite/SQLiteStatement;

    .line 31
    .line 32
    invoke-virtual {v6, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, v1, Lcom/fsck/k9/preferences/K9StorageEditor;->changes:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Ljava/util/Map$Entry;

    .line 66
    .line 67
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Ljava/lang/String;

    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/lang/String;

    .line 78
    .line 79
    iget-object v6, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v6, Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-nez v7, :cond_2

    .line 94
    .line 95
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-nez v6, :cond_1

    .line 100
    .line 101
    :cond_2
    iget-object v6, p1, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v6, Landroid/database/sqlite/SQLiteStatement;

    .line 104
    .line 105
    invoke-virtual {v6, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const/4 v7, 0x2

    .line 109
    invoke-virtual {v6, v7, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    return-void
.end method

.method public readByte()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lokio/Buffer;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)V

    .line 17
    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    const-string v0, "Unexpected end of stream"

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    throw p0
.end method

.method public readChar(Lokio/BufferedSource;)C
    .locals 1

    .line 1
    invoke-interface {p1}, Lokio/BufferedSource;->exhausted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lokio/BufferedSource;->readByte()B

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    int-to-char p0, p0

    .line 12
    return p0

    .line 13
    :cond_0
    const-string p1, "Unexpected end of stream"

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    throw p0
.end method

.method public readDigit()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->readByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-char v0, v0

    .line 6
    const/16 v1, 0x30

    .line 7
    .line 8
    if-gt v1, v0, :cond_0

    .line 9
    .line 10
    const/16 v2, 0x3a

    .line 11
    .line 12
    if-ge v0, v2, :cond_0

    .line 13
    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/BinaryBitmap;->unexpectedCharacterError(CZ)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0
.end method

.method public readEnhancedStatusCode(Lokio/BufferedSource;I)Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/zxing/BinaryBitmap;->readChar(Lokio/BufferedSource;)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x32

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/16 v1, 0x34

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x35

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    sget-object v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->PERMANENT_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/google/zxing/BinaryBitmap;->unexpectedCharacterError(CZ)V

    .line 23
    .line 24
    .line 25
    throw v2

    .line 26
    :cond_1
    sget-object v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->PERSISTENT_TRANSIENT_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    sget-object v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->SUCCESS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 30
    .line 31
    :goto_0
    if-ltz p2, :cond_7

    .line 32
    .line 33
    const/16 v4, 0xa

    .line 34
    .line 35
    if-ge p2, v4, :cond_7

    .line 36
    .line 37
    add-int/lit8 v4, p2, 0x30

    .line 38
    .line 39
    int-to-char v4, v4

    .line 40
    if-ne v0, v4, :cond_6

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/zxing/BinaryBitmap;->readChar(Lokio/BufferedSource;)C

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    const/16 v0, 0x2e

    .line 47
    .line 48
    if-ne p2, v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/google/zxing/BinaryBitmap;->readOneToThreeDigitNumber(Lokio/BufferedSource;)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/zxing/BinaryBitmap;->readChar(Lokio/BufferedSource;)C

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-ne v4, v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/google/zxing/BinaryBitmap;->readOneToThreeDigitNumber(Lokio/BufferedSource;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/zxing/BinaryBitmap;->readChar(Lokio/BufferedSource;)C

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const/16 v4, 0x20

    .line 69
    .line 70
    if-ne p1, v4, :cond_3

    .line 71
    .line 72
    new-instance p0, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;

    .line 73
    .line 74
    invoke-direct {p0, v1, p2, v0}, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;-><init>(Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;II)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/google/zxing/BinaryBitmap;->unexpectedCharacterError(CZ)V

    .line 79
    .line 80
    .line 81
    throw v2

    .line 82
    :cond_4
    invoke-virtual {p0, v4, v3}, Lcom/google/zxing/BinaryBitmap;->unexpectedCharacterError(CZ)V

    .line 83
    .line 84
    .line 85
    throw v2

    .line 86
    :cond_5
    invoke-virtual {p0, p2, v3}, Lcom/google/zxing/BinaryBitmap;->unexpectedCharacterError(CZ)V

    .line 87
    .line 88
    .line 89
    throw v2

    .line 90
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, "Reply code doesn\'t match status code class: "

    .line 93
    .line 94
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p2, " != "

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0, p1, v3}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 113
    .line 114
    .line 115
    throw v2

    .line 116
    :cond_7
    const-string p0, "Int "

    .line 117
    .line 118
    const-string p1, " is not a decimal digit"

    .line 119
    .line 120
    invoke-static {p2, p0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-object v2
.end method

.method public readOneToThreeDigitNumber(Lokio/BufferedSource;)I
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/zxing/BinaryBitmap;->readChar(Lokio/BufferedSource;)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/16 v3, 0x30

    .line 8
    .line 9
    if-gt v3, v0, :cond_3

    .line 10
    .line 11
    const/16 v4, 0x3a

    .line 12
    .line 13
    if-ge v0, v4, :cond_3

    .line 14
    .line 15
    sub-int/2addr v0, v3

    .line 16
    move v5, v2

    .line 17
    :goto_0
    const/4 v6, 0x2

    .line 18
    if-ge v5, v6, :cond_2

    .line 19
    .line 20
    invoke-interface {p1}, Lokio/BufferedSource;->peek()Lokio/RealBufferedSource;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {p0, v6}, Lcom/google/zxing/BinaryBitmap;->readChar(Lokio/BufferedSource;)C

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-gt v3, v6, :cond_1

    .line 29
    .line 30
    if-ge v6, v4, :cond_1

    .line 31
    .line 32
    mul-int/lit8 v0, v0, 0xa

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/zxing/BinaryBitmap;->readChar(Lokio/BufferedSource;)C

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-gt v3, v6, :cond_0

    .line 39
    .line 40
    if-ge v6, v4, :cond_0

    .line 41
    .line 42
    add-int/lit8 v6, v6, -0x30

    .line 43
    .line 44
    add-int/2addr v6, v0

    .line 45
    move v0, v6

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {p0, v6, v2}, Lcom/google/zxing/BinaryBitmap;->unexpectedCharacterError(CZ)V

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return v0

    .line 55
    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/google/zxing/BinaryBitmap;->unexpectedCharacterError(CZ)V

    .line 56
    .line 57
    .line 58
    throw v1
.end method

.method public readReplyCode()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->readDigit()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-gt v1, v0, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x6

    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    mul-int/lit8 v0, v0, 0x64

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->readDigit()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ltz v3, :cond_0

    .line 19
    .line 20
    if-ge v3, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    aput-object v1, v2, v4

    .line 31
    .line 32
    const-string v1, "2nd digit of reply code outside of specified range (0..5): %d"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lcom/bumptech/glide/GlideBuilder$1;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    mul-int/lit8 v3, v3, 0xa

    .line 38
    .line 39
    add-int/2addr v3, v0

    .line 40
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->readDigit()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    add-int/2addr p0, v3

    .line 45
    return p0

    .line 46
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "Unsupported 1st reply code digit: "

    .line 49
    .line 50
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, v0, v2}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    throw p0
.end method

.method public readResponseAfterReplyCode(IZ)Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    iput-boolean v3, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 18
    .line 19
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v4, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, -0x1

    .line 28
    const/4 v6, 0x0

    .line 29
    if-eq v4, v5, :cond_7

    .line 30
    .line 31
    int-to-char v4, v4

    .line 32
    const/16 v5, 0xa

    .line 33
    .line 34
    const/16 v7, 0xd

    .line 35
    .line 36
    if-eq v4, v7, :cond_6

    .line 37
    .line 38
    const/16 v8, 0x20

    .line 39
    .line 40
    if-eq v4, v8, :cond_3

    .line 41
    .line 42
    const/16 v8, 0x2d

    .line 43
    .line 44
    if-ne v4, v8, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0, v8}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->readUntilEndOfLine()Lokio/Buffer;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-eqz p2, :cond_0

    .line 54
    .line 55
    invoke-static {v4, p0, v2, v1, p1}, Lcom/google/zxing/BinaryBitmap;->readResponseAfterReplyCode$maybeReadAndCompareEnhancedStatusCode(Lokio/Buffer;Lcom/google/zxing/BinaryBitmap;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;I)Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    iput-object v8, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 60
    .line 61
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/zxing/BinaryBitmap;->readTextString(Lokio/Buffer;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v7}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v5}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->readReplyCode()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ne v4, p1, :cond_1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const-string p2, "Multi-line response with reply codes not matching: "

    .line 82
    .line 83
    const-string v0, " != "

    .line 84
    .line 85
    invoke-static {p1, v4, p2, v0}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p0, p1, v3}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    throw v6

    .line 93
    :cond_2
    invoke-virtual {p0, v4, v3}, Lcom/google/zxing/BinaryBitmap;->unexpectedCharacterError(CZ)V

    .line 94
    .line 95
    .line 96
    throw v6

    .line 97
    :cond_3
    invoke-virtual {p0, v8}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->readUntilEndOfLine()Lokio/Buffer;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-eqz p2, :cond_4

    .line 105
    .line 106
    invoke-static {v3, p0, v2, v1, p1}, Lcom/google/zxing/BinaryBitmap;->readResponseAfterReplyCode$maybeReadAndCompareEnhancedStatusCode(Lokio/Buffer;Lcom/google/zxing/BinaryBitmap;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;I)Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    iput-object p2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 111
    .line 112
    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/zxing/BinaryBitmap;->readTextString(Lokio/Buffer;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-lez v2, :cond_5

    .line 121
    .line 122
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    :cond_5
    invoke-virtual {p0, v7}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v5}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 129
    .line 130
    .line 131
    new-instance p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 132
    .line 133
    iget-object p2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast p2, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;

    .line 136
    .line 137
    invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;-><init>(ILcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;Ljava/util/List;)V

    .line 138
    .line 139
    .line 140
    return-object p0

    .line 141
    :cond_6
    invoke-virtual {p0, v7}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v5}, Lcom/google/zxing/BinaryBitmap;->expect(C)V

    .line 145
    .line 146
    .line 147
    new-instance p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 148
    .line 149
    iget-object p2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p2, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;

    .line 152
    .line 153
    invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;-><init>(ILcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    return-object p0

    .line 157
    :cond_7
    const-string p1, "Unexpected end of stream"

    .line 158
    .line 159
    invoke-virtual {p0, p1, v3}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    throw v6
.end method

.method public readTextString(Lokio/Buffer;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "\'textstring\' expected, but CR found instead"

    .line 13
    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/bumptech/glide/GlideBuilder$1;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    move p1, v0

    .line 21
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ge p1, v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/16 v2, 0x9

    .line 32
    .line 33
    if-eq v1, v2, :cond_2

    .line 34
    .line 35
    const/16 v2, 0x20

    .line 36
    .line 37
    if-gt v2, v1, :cond_1

    .line 38
    .line 39
    const/16 v2, 0x7f

    .line 40
    .line 41
    if-ge v1, v2, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string p1, "Text contains characters not allowed in \'textstring\'"

    .line 45
    .line 46
    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/bumptech/glide/GlideBuilder$1;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return-object p0
.end method

.method public readUntilEndOfLine()Lokio/Buffer;
    .locals 3

    .line 1
    new-instance v0, Lokio/Buffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    int-to-char v1, v1

    .line 18
    const/16 v2, 0xd

    .line 19
    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->readByte()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-object v0

    .line 31
    :cond_1
    const-string v0, "Unexpected end of stream"

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    throw p0
.end method

.method public setContextCapabilities$1(Lnet/thunderbird/core/android/account/LegacyAccount;Landroid/view/Menu;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleAccountMode:Z

    .line 6
    .line 7
    const v1, 0x7f0902c5

    .line 8
    .line 9
    .line 10
    const v2, 0x7f09015c

    .line 11
    .line 12
    .line 13
    const v3, 0x7f0903e5

    .line 14
    .line 15
    .line 16
    const v4, 0x7f090081

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    const/4 v6, 0x0

    .line 21
    if-eqz v0, :cond_a

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_0
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isOutbox()Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-eqz v7, :cond_2

    .line 34
    .line 35
    const p0, 0x7f09026e

    .line 36
    .line 37
    .line 38
    const v0, 0x7f09026f

    .line 39
    .line 40
    .line 41
    invoke-static {p2, p0, v6, v0, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 42
    .line 43
    .line 44
    invoke-static {p2, v4, v6, v2, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 45
    .line 46
    .line 47
    const p0, 0x7f0901f1

    .line 48
    .line 49
    .line 50
    const v0, 0x7f090466

    .line 51
    .line 52
    .line 53
    invoke-static {p2, p0, v6, v0, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 54
    .line 55
    .line 56
    invoke-static {p2, v3, v6, v1, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderId:Ljava/lang/Long;

    .line 60
    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    const p0, 0x7f0902c6

    .line 64
    .line 65
    .line 66
    invoke-interface {p2, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-interface {p0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v5, v0}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->isCopyCapable(Lnet/thunderbird/feature/account/AccountId;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_3

    .line 83
    .line 84
    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2, v0}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->isMoveCapable(Lnet/thunderbird/feature/account/AccountId;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_4

    .line 100
    .line 101
    invoke-static {p2, v1, v6, v4, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 102
    .line 103
    .line 104
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-interface {p0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_4
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccount;->hasArchiveFolder()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    const/4 v1, 0x0

    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 120
    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderId:Ljava/lang/Long;

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    move-object v0, v1

    .line 127
    :goto_0
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSpecialFolder$1(Ljava/lang/Long;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_7

    .line 132
    .line 133
    :cond_6
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 138
    .line 139
    .line 140
    :cond_7
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderId:Ljava/lang/Long;

    .line 141
    .line 142
    if-eqz p1, :cond_9

    .line 143
    .line 144
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 145
    .line 146
    if-eqz p1, :cond_8

    .line 147
    .line 148
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderId:Ljava/lang/Long;

    .line 149
    .line 150
    :cond_8
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSpecialFolder$1(Ljava/lang/Long;)Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    if-eqz p0, :cond_c

    .line 155
    .line 156
    :cond_9
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-interface {p0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_a
    :goto_1
    invoke-static {p2, v1, v6, v2, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 165
    .line 166
    .line 167
    if-eqz p1, :cond_b

    .line 168
    .line 169
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccount;->hasArchiveFolder()Z

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    if-ne p0, v5, :cond_b

    .line 174
    .line 175
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-interface {p0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 180
    .line 181
    .line 182
    :cond_b
    if-eqz p1, :cond_c

    .line 183
    .line 184
    iget-object p0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderId:Ljava/lang/Long;

    .line 185
    .line 186
    if-eqz p0, :cond_c

    .line 187
    .line 188
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-interface {p0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 193
    .line 194
    .line 195
    :cond_c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/zxing/BinaryBitmap;->$r8$classId:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->isZero()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string p0, "0"

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getDegree()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    mul-int/lit8 v1, v1, 0x8

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getDegree()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :goto_0
    if-ltz v1, :cond_b

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/google/zxing/BinaryBitmap;->getCoefficient(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_a

    .line 43
    .line 44
    if-gez v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getDegree()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-ne v1, v3, :cond_1

    .line 51
    .line 52
    const-string v3, "-"

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const-string v3, " - "

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :goto_1
    neg-int v2, v2

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-lez v3, :cond_3

    .line 70
    .line 71
    const-string v3, " + "

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    if-eq v2, v3, :cond_7

    .line 80
    .line 81
    :cond_4
    iget-object v4, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v4, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 84
    .line 85
    if-eqz v2, :cond_9

    .line 86
    .line 87
    iget-object v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 88
    .line 89
    aget v2, v4, v2

    .line 90
    .line 91
    if-nez v2, :cond_5

    .line 92
    .line 93
    const/16 v2, 0x31

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    if-ne v2, v3, :cond_6

    .line 100
    .line 101
    const/16 v2, 0x61

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_6
    const-string v4, "a^"

    .line 108
    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    :cond_7
    :goto_3
    if-eqz v1, :cond_a

    .line 116
    .line 117
    if-ne v1, v3, :cond_8

    .line 118
    .line 119
    const/16 v2, 0x78

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_8
    const-string/jumbo v2, "x^"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 139
    .line 140
    .line 141
    const/4 p0, 0x0

    .line 142
    goto :goto_5

    .line 143
    :cond_a
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    :goto_5
    return-object p0

    .line 151
    :sswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_6

    .line 160
    :catch_0
    const-string p0, ""

    .line 161
    .line 162
    :goto_6
    return-object p0

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public unexpectedCharacterError(CZ)V
    .locals 4

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ")"

    .line 5
    .line 6
    if-gt v0, p1, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x7f

    .line 9
    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "Unexpected character: "

    .line 15
    .line 16
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, " ("

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, "Unexpected character: ("

    .line 44
    .line 45
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/BinaryBitmap;->parserError(Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    throw v1
.end method

.method public writeServerSettings(Lcom/fsck/k9/preferences/K9StorageEditor;Ljava/lang/String;Lcom/fsck/k9/preferences/ValidatedSettings$Server;)V
    .locals 14

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/fsck/k9/preferences/ValidatedSettings$Server;->settings:Ljava/util/Map;

    .line 8
    .line 9
    const-string v3, "host"

    .line 10
    .line 11
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-object v6, v3

    .line 19
    check-cast v6, Ljava/lang/String;

    .line 20
    .line 21
    const-string v3, "port"

    .line 22
    .line 23
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    check-cast v3, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    const-string v3, "connectionSecurity"

    .line 37
    .line 38
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    check-cast v3, Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v3}, Lcom/fsck/k9/mail/ConnectionSecurity;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    const-string v3, "authenticationType"

    .line 52
    .line 53
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    check-cast v3, Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v3}, Lcom/fsck/k9/mail/AuthType;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/AuthType;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    const-string/jumbo v3, "username"

    .line 67
    .line 68
    .line 69
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-object v10, v3

    .line 77
    check-cast v10, Ljava/lang/String;

    .line 78
    .line 79
    const-string v3, "password"

    .line 80
    .line 81
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    instance-of v4, v3, Ljava/lang/String;

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    if-eqz v4, :cond_0

    .line 89
    .line 90
    check-cast v3, Ljava/lang/String;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    move-object v3, v5

    .line 94
    :goto_0
    sget-object v4, Lcom/fsck/k9/mail/AuthType;->XOAUTH2:Lcom/fsck/k9/mail/AuthType;

    .line 95
    .line 96
    if-ne v9, v4, :cond_1

    .line 97
    .line 98
    const-string v3, ""

    .line 99
    .line 100
    :cond_1
    move-object v11, v3

    .line 101
    const-string v3, "clientCertificateAlias"

    .line 102
    .line 103
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    instance-of v3, v2, Ljava/lang/String;

    .line 108
    .line 109
    if-eqz v3, :cond_2

    .line 110
    .line 111
    move-object v5, v2

    .line 112
    check-cast v5, Ljava/lang/String;

    .line 113
    .line 114
    :cond_2
    move-object v12, v5

    .line 115
    new-instance v4, Lcom/fsck/k9/mail/ServerSettings;

    .line 116
    .line 117
    iget-object v5, v0, Lcom/fsck/k9/preferences/ValidatedSettings$Server;->type:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v13, v0, Lcom/fsck/k9/preferences/ValidatedSettings$Server;->extras:Ljava/util/Map;

    .line 120
    .line 121
    invoke-direct/range {v4 .. v13}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p0, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;

    .line 127
    .line 128
    iget-object p0, p0, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;->adapter:Lcom/squareup/moshi/StandardJsonAdapters$2;

    .line 129
    .line 130
    invoke-virtual {p0, v4}, Lcom/squareup/moshi/JsonAdapter;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 141
    .line 142
    iget-boolean v0, v0, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-object v1, v1, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 149
    .line 150
    iget-boolean v1, v1, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSensitiveLoggingEnabled:Z

    .line 151
    .line 152
    move-object/from16 v3, p2

    .line 153
    .line 154
    invoke-static {p1, v3, p0, v0, v1}, Landroidx/compose/ui/unit/IntRectKt;->putStringWithLogging(Lcom/fsck/k9/preferences/K9StorageEditor;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 155
    .line 156
    .line 157
    return-void
.end method
