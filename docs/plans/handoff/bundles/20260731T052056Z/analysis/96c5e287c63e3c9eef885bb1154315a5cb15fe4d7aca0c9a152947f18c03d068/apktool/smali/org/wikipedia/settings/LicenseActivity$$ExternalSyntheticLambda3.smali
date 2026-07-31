.class public final synthetic Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object v10, p1

    .line 12
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    check-cast p2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    and-int/lit8 p2, p1, 0x3

    .line 21
    .line 22
    if-eq p2, v3, :cond_0

    .line 23
    .line 24
    move v2, v4

    .line 25
    :cond_0
    and-int/2addr p1, v4

    .line 26
    invoke-virtual {v10, p1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const/4 v11, 0x0

    .line 33
    const/16 v12, 0x39

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    iget-object v6, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v7, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function0;

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    invoke-static/range {v5 .. v12}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiTopAppBar-WH-ejsw(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-object v1

    .line 50
    :pswitch_0
    move-object v7, p1

    .line 51
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 52
    .line 53
    check-cast p2, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    sget p2, Lorg/wikipedia/settings/LicenseActivity;->$r8$clinit:I

    .line 60
    .line 61
    and-int/lit8 p2, p1, 0x3

    .line 62
    .line 63
    if-eq p2, v3, :cond_2

    .line 64
    .line 65
    move v2, v4

    .line 66
    :cond_2
    and-int/2addr p1, v4

    .line 67
    invoke-virtual {v7, p1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    const/16 v9, 0x39

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    iget-object v3, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v4, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function0;

    .line 80
    .line 81
    const/4 v5, 0x0

    .line 82
    const/4 v6, 0x0

    .line 83
    invoke-static/range {v2 .. v9}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiTopAppBar-WH-ejsw(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 88
    .line 89
    .line 90
    :goto_1
    return-object v1

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
