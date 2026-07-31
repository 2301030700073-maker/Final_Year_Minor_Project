.class public final Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic $elementId$inlined:Ljava/lang/String;

.field public final synthetic $r8$classId:I

.field public final synthetic $view$inlined:Landroid/widget/EditText;

.field public final synthetic this$0:Lorg/wikipedia/activity/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/activity/BaseActivity;Landroid/widget/EditText;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;->this$0:Lorg/wikipedia/activity/BaseActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;->$view$inlined:Landroid/widget/EditText;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;->$elementId$inlined:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final beforeTextChanged$org$wikipedia$createaccount$CreateAccountActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final beforeTextChanged$org$wikipedia$login$LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onTextChanged$org$wikipedia$createaccount$CreateAccountActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onTextChanged$org$wikipedia$login$LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;->this$0:Lorg/wikipedia/activity/BaseActivity;

    .line 5
    .line 6
    iget-object v3, p0, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;->$view$inlined:Landroid/widget/EditText;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v2, Lorg/wikipedia/createaccount/CreateAccountActivity;

    .line 12
    .line 13
    iget-object v0, v2, Lorg/wikipedia/createaccount/CreateAccountActivity;->textEnteredEventSent:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :cond_1
    if-nez v1, :cond_3

    .line 37
    .line 38
    invoke-static {v2}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    const/16 v11, 0xf6

    .line 46
    .line 47
    const-string/jumbo v5, "type"

    .line 48
    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    iget-object v8, p0, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;->$elementId$inlined:Ljava/lang/String;

    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    invoke-static/range {v4 .. v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    return-void

    .line 64
    :pswitch_0
    check-cast v2, Lorg/wikipedia/login/LoginActivity;

    .line 65
    .line 66
    iget-object v0, v2, Lorg/wikipedia/login/LoginActivity;->textEnteredEventSent:Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    if-eqz p1, :cond_7

    .line 69
    .line 70
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Ljava/lang/Boolean;

    .line 82
    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    :cond_5
    if-nez v1, :cond_7

    .line 90
    .line 91
    invoke-static {v2}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_6

    .line 96
    .line 97
    const/4 v10, 0x0

    .line 98
    const/16 v11, 0xf6

    .line 99
    .line 100
    const-string/jumbo v5, "type"

    .line 101
    .line 102
    .line 103
    const/4 v6, 0x0

    .line 104
    const/4 v7, 0x0

    .line 105
    iget-object v8, p0, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;->$elementId$inlined:Ljava/lang/String;

    .line 106
    .line 107
    const/4 v9, 0x0

    .line 108
    invoke-static/range {v4 .. v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 109
    .line 110
    .line 111
    :cond_6
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_7
    :goto_1
    return-void

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/login/LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method
