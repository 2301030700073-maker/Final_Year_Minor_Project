.class public final Lorg/maplibre/android/maps/MapChangeReceiver;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final onCameraDidChangeListenerList:Ljava/lang/Object;

.field public final onCameraIsChangingListenerList:Ljava/lang/Object;

.field public final onCameraWillChangeListenerList:Ljava/lang/Object;

.field public final onCanRemoveUnusedStyleImageListenerList:Ljava/lang/Object;

.field public final onDidBecomeIdleListenerList:Ljava/lang/Object;

.field public final onDidFailLoadingMapListenerList:Ljava/lang/Object;

.field public final onDidFinishLoadingMapListenerList:Ljava/lang/Object;

.field public final onDidFinishLoadingStyleListenerList:Ljava/lang/Object;

.field public final onDidFinishRenderingFrameList:Ljava/lang/Object;

.field public final onDidFinishRenderingFrameWithStatsList:Ljava/lang/Object;

.field public final onDidFinishRenderingMapListenerList:Ljava/lang/Object;

.field public final onGlyphsErrorList:Ljava/lang/Object;

.field public final onGlyphsLoadedList:Ljava/lang/Object;

.field public final onGlyphsRequestedList:Ljava/lang/Object;

.field public final onPostCompileShaderList:Ljava/lang/Object;

.field public final onPreCompileShaderList:Ljava/lang/Object;

.field public final onShaderCompileFailedList:Ljava/lang/Object;

.field public final onSourceChangedListenerList:Ljava/lang/Object;

.field public final onSpriteErrorList:Ljava/lang/Object;

.field public final onSpriteLoadedList:Ljava/lang/Object;

.field public final onSpriteRequestedList:Ljava/lang/Object;

.field public final onStyleImageMissingListenerList:Ljava/lang/Object;

.field public final onTileActionList:Ljava/lang/Object;

.field public final onWillStartLoadingMapListenerList:Ljava/lang/Object;

.field public final onWillStartRenderingFrameList:Ljava/lang/Object;

.field public final onWillStartRenderingMapListenerList:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraWillChangeListenerList:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraIsChangingListenerList:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartLoadingMapListenerList:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishLoadingMapListenerList:Ljava/lang/Object;

    .line 38
    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFailLoadingMapListenerList:Ljava/lang/Object;

    .line 45
    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartRenderingFrameList:Ljava/lang/Object;

    .line 52
    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingFrameList:Ljava/lang/Object;

    .line 59
    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingFrameWithStatsList:Ljava/lang/Object;

    .line 66
    .line 67
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartRenderingMapListenerList:Ljava/lang/Object;

    .line 73
    .line 74
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingMapListenerList:Ljava/lang/Object;

    .line 80
    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidBecomeIdleListenerList:Ljava/lang/Object;

    .line 87
    .line 88
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/lang/Object;

    .line 94
    .line 95
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onSourceChangedListenerList:Ljava/lang/Object;

    .line 101
    .line 102
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onStyleImageMissingListenerList:Ljava/lang/Object;

    .line 108
    .line 109
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCanRemoveUnusedStyleImageListenerList:Ljava/lang/Object;

    .line 115
    .line 116
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onPreCompileShaderList:Ljava/lang/Object;

    .line 122
    .line 123
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 124
    .line 125
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onPostCompileShaderList:Ljava/lang/Object;

    .line 129
    .line 130
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onShaderCompileFailedList:Ljava/lang/Object;

    .line 136
    .line 137
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 140
    .line 141
    .line 142
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onGlyphsLoadedList:Ljava/lang/Object;

    .line 143
    .line 144
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 145
    .line 146
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 147
    .line 148
    .line 149
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onGlyphsErrorList:Ljava/lang/Object;

    .line 150
    .line 151
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onGlyphsRequestedList:Ljava/lang/Object;

    .line 157
    .line 158
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 159
    .line 160
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onTileActionList:Ljava/lang/Object;

    .line 164
    .line 165
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 166
    .line 167
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onSpriteLoadedList:Ljava/lang/Object;

    .line 171
    .line 172
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 173
    .line 174
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 175
    .line 176
    .line 177
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onSpriteErrorList:Ljava/lang/Object;

    .line 178
    .line 179
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 180
    .line 181
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 182
    .line 183
    .line 184
    iput-object v0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onSpriteRequestedList:Ljava/lang/Object;

    .line 185
    .line 186
    return-void
.end method

.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/button/MaterialButton;Landroidx/core/widget/NestedScrollView;Lorg/wikipedia/views/GoneIfEmptyTextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/Space;Landroid/widget/TextView;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lorg/wikipedia/views/WikiErrorView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Lorg/wikipedia/views/WikiCardView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lorg/wikipedia/views/FaceAndColorDetectImageView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraWillChangeListenerList:Ljava/lang/Object;

    .line 189
    iput-object p2, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraIsChangingListenerList:Ljava/lang/Object;

    .line 190
    iput-object p3, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/lang/Object;

    .line 191
    iput-object p4, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartLoadingMapListenerList:Ljava/lang/Object;

    .line 192
    iput-object p5, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishLoadingMapListenerList:Ljava/lang/Object;

    .line 193
    iput-object p6, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFailLoadingMapListenerList:Ljava/lang/Object;

    .line 194
    iput-object p7, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartRenderingFrameList:Ljava/lang/Object;

    .line 195
    iput-object p8, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingFrameList:Ljava/lang/Object;

    .line 196
    iput-object p9, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingFrameWithStatsList:Ljava/lang/Object;

    .line 197
    iput-object p10, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartRenderingMapListenerList:Ljava/lang/Object;

    .line 198
    iput-object p11, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingMapListenerList:Ljava/lang/Object;

    .line 199
    iput-object p12, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidBecomeIdleListenerList:Ljava/lang/Object;

    .line 200
    iput-object p13, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/lang/Object;

    .line 201
    iput-object p14, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onSourceChangedListenerList:Ljava/lang/Object;

    .line 202
    iput-object p15, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onStyleImageMissingListenerList:Ljava/lang/Object;

    move-object/from16 p1, p16

    .line 203
    iput-object p1, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCanRemoveUnusedStyleImageListenerList:Ljava/lang/Object;

    move-object/from16 p1, p17

    .line 204
    iput-object p1, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onPreCompileShaderList:Ljava/lang/Object;

    move-object/from16 p1, p18

    .line 205
    iput-object p1, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onPostCompileShaderList:Ljava/lang/Object;

    move-object/from16 p1, p19

    .line 206
    iput-object p1, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onShaderCompileFailedList:Ljava/lang/Object;

    move-object/from16 p1, p20

    .line 207
    iput-object p1, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onGlyphsLoadedList:Ljava/lang/Object;

    move-object/from16 p1, p21

    .line 208
    iput-object p1, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onGlyphsErrorList:Ljava/lang/Object;

    move-object/from16 p1, p22

    .line 209
    iput-object p1, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onGlyphsRequestedList:Ljava/lang/Object;

    move-object/from16 p1, p23

    .line 210
    iput-object p1, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onTileActionList:Ljava/lang/Object;

    move-object/from16 p1, p24

    .line 211
    iput-object p1, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onSpriteLoadedList:Ljava/lang/Object;

    move-object/from16 p1, p25

    .line 212
    iput-object p1, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onSpriteErrorList:Ljava/lang/Object;

    move-object/from16 p1, p26

    .line 213
    iput-object p1, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onSpriteRequestedList:Ljava/lang/Object;

    return-void
.end method
