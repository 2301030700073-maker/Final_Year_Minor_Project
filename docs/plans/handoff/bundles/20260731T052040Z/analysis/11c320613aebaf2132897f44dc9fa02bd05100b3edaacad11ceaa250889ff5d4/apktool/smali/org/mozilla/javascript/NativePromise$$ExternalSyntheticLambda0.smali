.class public final synthetic Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/mozilla/javascript/NativePromise$Reaction;

.field public final synthetic f$1:Lorg/mozilla/javascript/Context;

.field public final synthetic f$2:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/NativePromise$Reaction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/NativePromise$Reaction;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda0;->f$1:Lorg/mozilla/javascript/Context;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda0;->f$2:Lorg/mozilla/javascript/Scriptable;

    .line 8
    .line 9
    iput-object p4, p0, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda0;->f$2:Lorg/mozilla/javascript/Scriptable;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda0;->f$1:Lorg/mozilla/javascript/Context;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/mozilla/javascript/NativePromise$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/NativePromise$Reaction;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v3, v2, v1}, Lorg/mozilla/javascript/NativePromise;->$r8$lambda$IB2PoYU4BQWOO8pylruZl1gAXxE(Lorg/mozilla/javascript/NativePromise$Reaction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-static {p0, v3, v2, v1}, Lorg/mozilla/javascript/NativePromise;->$r8$lambda$u6rSBJEpC78RpfR1F0eDlX37ugw(Lorg/mozilla/javascript/NativePromise$Reaction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
