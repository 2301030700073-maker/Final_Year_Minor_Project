.class public final Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;


# direct methods
.method public constructor <init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;

    .line 9
    .line 10
    invoke-direct {p0, p2}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget-object p2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 15
    .line 16
    iput-object p1, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;

    .line 17
    .line 18
    invoke-direct {p0, p2}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    sget-object p2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 23
    .line 24
    iput-object p1, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;

    .line 25
    .line 26
    invoke-direct {p0, p2}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    sget-object p2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 31
    .line 32
    iput-object p1, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;

    .line 33
    .line 34
    invoke-direct {p0, p2}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_3
    sget-object p2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 39
    .line 40
    iput-object p1, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;

    .line 41
    .line 42
    invoke-direct {p0, p2}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final handleException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V
    .locals 3

    .line 1
    iget p2, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const v1, 0x104000a

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iget-object p0, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;

    .line 9
    .line 10
    packed-switch p2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {p2, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget-object p1, p2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 33
    .line 34
    iput-object p0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 35
    .line 36
    invoke-virtual {p2, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_0
    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 44
    .line 45
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-direct {p2, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iget-object p1, p2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 63
    .line 64
    iput-object p0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 65
    .line 66
    invoke-virtual {p2, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_1
    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 74
    .line 75
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {p2, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    iget-object p1, p2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 93
    .line 94
    iput-object p0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 95
    .line 96
    invoke-virtual {p2, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_2
    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 104
    .line 105
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-direct {p2, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    iget-object p1, p2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 123
    .line 124
    iput-object p0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 125
    .line 126
    invoke-virtual {p2, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :pswitch_3
    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 134
    .line 135
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-direct {p2, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    iget-object p1, p2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast p1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 153
    .line 154
    iput-object p0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 155
    .line 156
    invoke-virtual {p2, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
