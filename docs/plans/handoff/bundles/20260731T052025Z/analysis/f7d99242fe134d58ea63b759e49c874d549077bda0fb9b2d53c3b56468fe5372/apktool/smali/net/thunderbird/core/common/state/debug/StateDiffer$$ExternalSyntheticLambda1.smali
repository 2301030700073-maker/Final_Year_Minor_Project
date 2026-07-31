.class public final synthetic Lnet/thunderbird/core/common/state/debug/StateDiffer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lokhttp3/ConnectionPool;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/ConnectionPool;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/core/common/state/debug/StateDiffer$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/core/common/state/debug/StateDiffer$$ExternalSyntheticLambda1;->f$0:Lokhttp3/ConnectionPool;

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
    iget v0, p0, Lnet/thunderbird/core/common/state/debug/StateDiffer$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/core/common/state/debug/StateDiffer$$ExternalSyntheticLambda1;->f$0:Lokhttp3/ConnectionPool;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lnet/thunderbird/core/common/state/debug/ValueFormatter;

    .line 11
    .line 12
    invoke-static {p0, p1}, Lnet/thunderbird/core/common/state/debug/ValueFormatter;->format$default(Lnet/thunderbird/core/common/state/debug/ValueFormatter;Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 18
    .line 19
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lnet/thunderbird/core/common/state/debug/ValueFormatter;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    invoke-static {p0, p1}, Lnet/thunderbird/core/common/state/debug/ValueFormatter;->format$default(Lnet/thunderbird/core/common/state/debug/ValueFormatter;Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
