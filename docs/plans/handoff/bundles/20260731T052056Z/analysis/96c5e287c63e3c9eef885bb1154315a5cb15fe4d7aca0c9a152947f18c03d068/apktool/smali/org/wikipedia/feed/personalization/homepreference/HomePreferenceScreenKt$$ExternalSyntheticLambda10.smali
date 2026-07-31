.class public final synthetic Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iput-boolean p1, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda10;->f$0:Z

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda10;->f$1:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda10;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda10;->f$2:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda10;->f$1:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iget-boolean p0, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda10;->f$0:Z

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-interface {v2, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :goto_0
    return-object v1

    .line 30
    :pswitch_0
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-interface {v2, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :goto_1
    return-object v1

    .line 46
    :pswitch_1
    check-cast v2, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 47
    .line 48
    if-nez p0, :cond_2

    .line 49
    .line 50
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_2
    return-object v1

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
