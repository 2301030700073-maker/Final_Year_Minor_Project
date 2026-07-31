.class public final Lleakcanary/internal/HandlersKt$mainHandler$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lleakcanary/internal/HandlersKt$mainHandler$2;

.field public static final INSTANCE$1:Lleakcanary/internal/HandlersKt$mainHandler$2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lleakcanary/internal/HandlersKt$mainHandler$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Lleakcanary/internal/HandlersKt$mainHandler$2;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lleakcanary/internal/HandlersKt$mainHandler$2;->INSTANCE$1:Lleakcanary/internal/HandlersKt$mainHandler$2;

    .line 9
    .line 10
    new-instance v0, Lleakcanary/internal/HandlersKt$mainHandler$2;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, v1, v2}, Lleakcanary/internal/HandlersKt$mainHandler$2;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lleakcanary/internal/HandlersKt$mainHandler$2;->INSTANCE:Lleakcanary/internal/HandlersKt$mainHandler$2;

    .line 17
    .line 18
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lleakcanary/internal/HandlersKt$mainHandler$2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Lleakcanary/internal/HandlersKt$mainHandler$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget p0, Landroidx/appcompat/app/AppCompatActivity;->$r8$clinit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :pswitch_0
    new-instance p0, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
