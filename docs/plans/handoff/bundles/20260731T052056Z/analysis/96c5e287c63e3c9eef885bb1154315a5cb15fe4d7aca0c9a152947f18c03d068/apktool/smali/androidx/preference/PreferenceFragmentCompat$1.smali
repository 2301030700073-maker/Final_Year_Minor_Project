.class public final Landroidx/preference/PreferenceFragmentCompat$1;
.super Landroid/os/Handler;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 15
    iput p1, p0, Landroidx/preference/PreferenceFragmentCompat$1;->$r8$classId:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->$r8$classId:I

    .line 16
    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/location/StaleStateManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 16
    .line 17
    if-eqz p0, :cond_6

    .line 18
    .line 19
    iget p1, p1, Landroid/os/Message;->what:I

    .line 20
    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    if-eq p1, v1, :cond_3

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    if-eq p1, v0, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    if-eq p1, v0, :cond_0

    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    .line 35
    iget-boolean v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->idle:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_1
    iput-boolean v1, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->idle:Z

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_6

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_6

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;

    .line 64
    .line 65
    invoke-interface {p1}, Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;->onCameraIdle()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_6

    .line 76
    .line 77
    iget-boolean p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->idle:Z

    .line 78
    .line 79
    if-nez p0, :cond_6

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 96
    .line 97
    iget-object p1, p1, Lorg/maplibre/android/maps/CameraChangeDispatcher;->handler:Landroidx/preference/PreferenceFragmentCompat$1;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat$1;->scheduleMessage(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    iget-object p1, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_6

    .line 110
    .line 111
    iget-boolean p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->idle:Z

    .line 112
    .line 113
    if-nez p0, :cond_6

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_6

    .line 124
    .line 125
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;

    .line 130
    .line 131
    invoke-interface {p1}, Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;->onCameraMove()V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    iget-object p1, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 136
    .line 137
    iget-boolean v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->idle:Z

    .line 138
    .line 139
    if-nez v0, :cond_5

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_5
    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->idle:Z

    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_6

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_6

    .line 160
    .line 161
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 166
    .line 167
    iget v1, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->moveStartedReason:I

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_6
    :goto_4
    return-void

    .line 174
    :pswitch_0
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 177
    .line 178
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    check-cast p0, Lorg/maplibre/android/location/StaleStateManager;

    .line 183
    .line 184
    if-eqz p0, :cond_7

    .line 185
    .line 186
    invoke-virtual {p0, v1}, Lorg/maplibre/android/location/StaleStateManager;->setState(Z)V

    .line 187
    .line 188
    .line 189
    :cond_7
    return-void

    .line 190
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 191
    .line 192
    const/4 v2, -0x3

    .line 193
    if-eq v0, v2, :cond_9

    .line 194
    .line 195
    const/4 v2, -0x2

    .line 196
    if-eq v0, v2, :cond_9

    .line 197
    .line 198
    const/4 v2, -0x1

    .line 199
    if-eq v0, v2, :cond_9

    .line 200
    .line 201
    if-eq v0, v1, :cond_8

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_8
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p0, Landroid/content/DialogInterface;

    .line 207
    .line 208
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 209
    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    .line 215
    .line 216
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 219
    .line 220
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    check-cast p0, Landroid/content/DialogInterface;

    .line 225
    .line 226
    iget p1, p1, Landroid/os/Message;->what:I

    .line 227
    .line 228
    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 229
    .line 230
    .line 231
    :goto_5
    return-void

    .line 232
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->what:I

    .line 233
    .line 234
    if-eq p1, v1, :cond_a

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_a
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 240
    .line 241
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 242
    .line 243
    iget-object p1, p1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast p1, Landroidx/preference/PreferenceScreen;

    .line 246
    .line 247
    if-eqz p1, :cond_b

    .line 248
    .line 249
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 250
    .line 251
    new-instance v0, Landroidx/preference/PreferenceGroupAdapter;

    .line 252
    .line 253
    invoke-direct {v0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->onAttached()V

    .line 260
    .line 261
    .line 262
    :cond_b
    :goto_6
    return-void

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scheduleMessage(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    if-nez p1, :cond_2

    .line 14
    .line 15
    iget-boolean v0, v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->idle:Z

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v2, 0x3

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    :cond_0
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 40
    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    new-instance v0, Landroid/os/Message;

    .line 46
    .line 47
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 48
    .line 49
    .line 50
    iput p1, v0, Landroid/os/Message;->what:I

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_1
    return-void
.end method
