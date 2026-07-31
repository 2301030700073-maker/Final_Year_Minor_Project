.class public final Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1;->this$0:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final beforeTextChanged$org$wikipedia$edit$insertmedia$InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final beforeTextChanged$org$wikipedia$edit$insertmedia$InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$2(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onTextChanged$org$wikipedia$edit$insertmedia$InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onTextChanged$org$wikipedia$edit$insertmedia$InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$2(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1;->this$0:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 4
    .line 5
    const-string v0, "activity"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v1

    .line 33
    :cond_1
    :goto_0
    return-void

    .line 34
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v1

    .line 38
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 39
    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_4

    .line 47
    .line 48
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 49
    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :cond_4
    :goto_1
    return-void

    .line 61
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v1

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method
