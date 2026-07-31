.class public final Lcurtains/internal/WindowManagerSpy$mViewsField$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcurtains/internal/WindowManagerSpy$mViewsField$2;

.field public static final INSTANCE$1:Lcurtains/internal/WindowManagerSpy$mViewsField$2;

.field public static final INSTANCE$2:Lcurtains/internal/WindowManagerSpy$mViewsField$2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcurtains/internal/WindowManagerSpy$mViewsField$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lcurtains/internal/WindowManagerSpy$mViewsField$2;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcurtains/internal/WindowManagerSpy$mViewsField$2;->INSTANCE:Lcurtains/internal/WindowManagerSpy$mViewsField$2;

    .line 9
    .line 10
    new-instance v0, Lcurtains/internal/WindowManagerSpy$mViewsField$2;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Lcurtains/internal/WindowManagerSpy$mViewsField$2;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcurtains/internal/WindowManagerSpy$mViewsField$2;->INSTANCE$1:Lcurtains/internal/WindowManagerSpy$mViewsField$2;

    .line 17
    .line 18
    new-instance v0, Lcurtains/internal/WindowManagerSpy$mViewsField$2;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-direct {v0, v1, v2}, Lcurtains/internal/WindowManagerSpy$mViewsField$2;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcurtains/internal/WindowManagerSpy$mViewsField$2;->INSTANCE$2:Lcurtains/internal/WindowManagerSpy$mViewsField$2;

    .line 25
    .line 26
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcurtains/internal/WindowManagerSpy$mViewsField$2;->$r8$classId:I

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
    .locals 2

    .line 1
    iget p0, p0, Lcurtains/internal/WindowManagerSpy$mViewsField$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    sget-object p0, Lcurtains/internal/WindowManagerSpy;->windowManagerClass$delegate:Lkotlin/Lazy;

    .line 8
    .line 9
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/Class;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string v1, "getInstance"

    .line 18
    .line 19
    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    return-object v0

    .line 28
    :pswitch_0
    const-string p0, "android.view.WindowManagerGlobal"

    .line 29
    .line 30
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    const-string v1, "WindowManagerSpy"

    .line 37
    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    return-object v0

    .line 42
    :pswitch_1
    sget-object p0, Lcurtains/internal/WindowManagerSpy;->windowManagerClass$delegate:Lkotlin/Lazy;

    .line 43
    .line 44
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Ljava/lang/Class;

    .line 49
    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    const-string v0, "mViews"

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/4 p0, 0x1

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-object v0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
