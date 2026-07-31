.class public final Lretrofit2/KotlinExtensions$await$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_await:Lretrofit2/Call;


# direct methods
.method public synthetic constructor <init>(Lretrofit2/Call;I)V
    .locals 0

    .line 1
    iput p2, p0, Lretrofit2/KotlinExtensions$await$2$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lretrofit2/KotlinExtensions$await$2$1;->$this_await:Lretrofit2/Call;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lretrofit2/KotlinExtensions$await$2$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lretrofit2/KotlinExtensions$await$2$1;->$this_await:Lretrofit2/Call;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Throwable;

    .line 11
    .line 12
    invoke-interface {p0}, Lretrofit2/Call;->cancel()V

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    .line 17
    .line 18
    invoke-interface {p0}, Lretrofit2/Call;->cancel()V

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    .line 23
    .line 24
    invoke-interface {p0}, Lretrofit2/Call;->cancel()V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
