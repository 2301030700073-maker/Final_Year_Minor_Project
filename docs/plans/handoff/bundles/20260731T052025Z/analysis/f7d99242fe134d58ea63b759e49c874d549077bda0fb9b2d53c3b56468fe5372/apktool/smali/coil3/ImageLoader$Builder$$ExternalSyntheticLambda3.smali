.class public final synthetic Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcoil3/Image;


# direct methods
.method public synthetic constructor <init>(Lcoil3/Image;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda3;->f$0:Lcoil3/Image;

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
    .locals 1

    .line 1
    iget v0, p0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda3;->f$0:Lcoil3/Image;

    .line 4
    .line 5
    check-cast p1, Lcoil3/request/ImageRequest;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcoil3/request/ImageRequest$Builder;->$r8$lambda$3BIoxURzITuZcUFXokDt58P3_DY(Lcoil3/Image;Lcoil3/request/ImageRequest;)Lcoil3/Image;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    invoke-static {p0, p1}, Lcoil3/request/ImageRequest$Builder;->$r8$lambda$e3Yw2jGjTg9755wbrJW2ZVZQrDo(Lcoil3/Image;Lcoil3/request/ImageRequest;)Lcoil3/Image;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :pswitch_1
    invoke-static {p0, p1}, Lcoil3/request/ImageRequest$Builder;->$r8$lambda$xvrEI6fRkuKsO0jZVeWENsyFrLY(Lcoil3/Image;Lcoil3/request/ImageRequest;)Lcoil3/Image;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_2
    invoke-static {p0, p1}, Lcoil3/ImageLoader$Builder;->$r8$lambda$Gr2iTwcgyX5drYL6BzM--SQW6GQ(Lcoil3/Image;Lcoil3/request/ImageRequest;)Lcoil3/Image;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_3
    invoke-static {p0, p1}, Lcoil3/ImageLoader$Builder;->$r8$lambda$oofYcQ9ohrocYPssOvSqTomb3gw(Lcoil3/Image;Lcoil3/request/ImageRequest;)Lcoil3/Image;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_4
    invoke-static {p0, p1}, Lcoil3/ImageLoader$Builder;->$r8$lambda$KASJO5MKVQk0gYPI_x3ujkw16f8(Lcoil3/Image;Lcoil3/request/ImageRequest;)Lcoil3/Image;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
