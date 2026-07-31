.class public final Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2;

.field public static final INSTANCE$1:Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2;->INSTANCE:Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2;

    .line 8
    .line 9
    new-instance v0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2;->INSTANCE$1:Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
