.class public final synthetic Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lus/shandian/giga/ui/common/Deleter;


# direct methods
.method public synthetic constructor <init>(Lus/shandian/giga/ui/common/Deleter;I)V
    .locals 0

    .line 1
    iput p2, p0, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda0;->f$0:Lus/shandian/giga/ui/common/Deleter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda0;->f$0:Lus/shandian/giga/ui/common/Deleter;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lus/shandian/giga/ui/common/Deleter;->commit()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-static {p0}, Lus/shandian/giga/ui/common/Deleter;->$r8$lambda$fRH27PItlkc7g0X38LEPA6BZ9V8(Lus/shandian/giga/ui/common/Deleter;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    invoke-virtual {p0}, Lus/shandian/giga/ui/common/Deleter;->show()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
