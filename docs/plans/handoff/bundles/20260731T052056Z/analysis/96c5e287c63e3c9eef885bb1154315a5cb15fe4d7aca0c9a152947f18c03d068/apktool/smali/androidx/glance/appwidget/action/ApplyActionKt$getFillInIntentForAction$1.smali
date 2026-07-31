.class public final Landroidx/glance/appwidget/action/ApplyActionKt$getFillInIntentForAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/glance/appwidget/action/ApplyActionKt$getFillInIntentForAction$1;

.field public static final INSTANCE$1:Landroidx/glance/appwidget/action/ApplyActionKt$getFillInIntentForAction$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/glance/appwidget/action/ApplyActionKt$getFillInIntentForAction$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/glance/appwidget/action/ApplyActionKt$getFillInIntentForAction$1;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/glance/appwidget/action/ApplyActionKt$getFillInIntentForAction$1;->INSTANCE:Landroidx/glance/appwidget/action/ApplyActionKt$getFillInIntentForAction$1;

    .line 9
    .line 10
    new-instance v0, Landroidx/glance/appwidget/action/ApplyActionKt$getFillInIntentForAction$1;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Landroidx/glance/appwidget/action/ApplyActionKt$getFillInIntentForAction$1;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/glance/appwidget/action/ApplyActionKt$getFillInIntentForAction$1;->INSTANCE$1:Landroidx/glance/appwidget/action/ApplyActionKt$getFillInIntentForAction$1;

    .line 17
    .line 18
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/glance/appwidget/action/ApplyActionKt$getFillInIntentForAction$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Landroidx/glance/appwidget/action/ApplyActionKt$getFillInIntentForAction$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/glance/action/MutableActionParameters;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    check-cast p1, Landroidx/glance/action/MutableActionParameters;

    .line 10
    .line 11
    return-object p1

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
