.class public final Lorg/wikipedia/views/CustomDatePicker;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/views/CustomDatePicker;",
        "Landroidx/fragment/app/DialogFragment;",
        "<init>",
        "()V",
        "org/wikipedia/feed/onthisday/OnThisDayFragment",
        "DiffLinesAdapter",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public _binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public callback:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

.field public final callbackDay:Ljava/util/Calendar;

.field public final selectedDay:Ljava/util/Calendar;

.field public final today:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->today:Ljava/util/Calendar;

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    .line 15
    .line 16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->callbackDay:Ljava/util/Calendar;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const v0, 0x7f0c0163

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const v0, 0x7f0900be

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    move-object v6, v3

    .line 22
    check-cast v6, Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    const v0, 0x7f0900bf

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    move-object v7, v3

    .line 34
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    const v0, 0x7f09018e

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    move-object v8, v3

    .line 46
    check-cast v8, Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz v8, :cond_0

    .line 49
    .line 50
    const v0, 0x7f090459

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    move-object v9, v3

    .line 58
    check-cast v9, Landroid/widget/ImageView;

    .line 59
    .line 60
    if-eqz v9, :cond_0

    .line 61
    .line 62
    const v0, 0x7f09050e

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    move-object v10, v3

    .line 70
    check-cast v10, Landroid/widget/ImageView;

    .line 71
    .line 72
    if-eqz v10, :cond_0

    .line 73
    .line 74
    new-instance v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 75
    .line 76
    move-object v5, p1

    .line 77
    check-cast v5, Landroid/widget/LinearLayout;

    .line 78
    .line 79
    invoke-direct/range {v4 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    iput-object v4, p0, Lorg/wikipedia/views/CustomDatePicker;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 83
    .line 84
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    const/4 v0, 0x7

    .line 90
    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lorg/wikipedia/views/CustomDatePicker;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    .line 105
    new-instance v0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 106
    .line 107
    const/16 v1, 0xc

    .line 108
    .line 109
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;-><init>(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lorg/wikipedia/views/CustomDatePicker;->setMonthString()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lorg/wikipedia/views/CustomDatePicker;->setDayString()V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lorg/wikipedia/views/CustomDatePicker;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p1, Landroid/widget/ImageView;

    .line 129
    .line 130
    new-instance v0, Lorg/wikipedia/views/CustomDatePicker$$ExternalSyntheticLambda2;

    .line 131
    .line 132
    const/4 v1, 0x1

    .line 133
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/views/CustomDatePicker$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/views/CustomDatePicker;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lorg/wikipedia/views/CustomDatePicker;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p1, Landroid/widget/ImageView;

    .line 147
    .line 148
    new-instance v0, Lorg/wikipedia/views/CustomDatePicker$$ExternalSyntheticLambda2;

    .line 149
    .line 150
    invoke-direct {v0, p0, v2}, Lorg/wikipedia/views/CustomDatePicker$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/views/CustomDatePicker;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 157
    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-direct {p1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v0, Landroid/widget/LinearLayout;

    .line 173
    .line 174
    iget-object v1, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 177
    .line 178
    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 179
    .line 180
    new-instance v0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 181
    .line 182
    const/16 v1, 0x10

    .line 183
    .line 184
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    const p0, 0x7f1200ec

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p0, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    new-instance p0, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;

    .line 194
    .line 195
    const/16 v0, 0xb

    .line 196
    .line 197
    invoke-direct {p0, v0}, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;-><init>(I)V

    .line 198
    .line 199
    .line 200
    const v0, 0x7f1200eb

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    return-object p0

    .line 211
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    const-string p1, "Missing required view with ID: "

    .line 220
    .line 221
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    return-object v1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 3
    .line 4
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setDayString()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    sget-object v1, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v1, "MMM d"

    .line 25
    .line 26
    invoke-static {v1, p0}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final setMonthString()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    sget-object v1, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v2, "MMMM"

    .line 22
    .line 23
    invoke-static {v2, v1}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lorg/wikipedia/views/CustomDatePicker;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method
