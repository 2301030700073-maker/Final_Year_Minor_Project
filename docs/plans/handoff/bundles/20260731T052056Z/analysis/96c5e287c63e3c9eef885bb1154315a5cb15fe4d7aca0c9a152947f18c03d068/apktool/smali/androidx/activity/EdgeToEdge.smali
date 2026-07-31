.class public abstract Landroidx/activity/EdgeToEdge;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final DefaultDarkScrim:I

.field public static final DefaultLightScrim:I

.field public static Impl:Landroidx/activity/EdgeToEdgeBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xe6

    .line 2
    .line 3
    const/16 v1, 0xff

    .line 4
    .line 5
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Landroidx/activity/EdgeToEdge;->DefaultLightScrim:I

    .line 10
    .line 11
    const/16 v0, 0x80

    .line 12
    .line 13
    const/16 v1, 0x1b

    .line 14
    .line 15
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sput v0, Landroidx/activity/EdgeToEdge;->DefaultDarkScrim:I

    .line 20
    .line 21
    return-void
.end method

.method public static enable$default(Landroidx/activity/ComponentActivity;)V
    .locals 10

    .line 1
    new-instance v0, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v4, Landroidx/activity/SystemBarStyle;

    .line 8
    .line 9
    const/4 v9, 0x0

    .line 10
    invoke-direct {v4, v9, v9, v0}, Landroidx/activity/SystemBarStyle;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 16
    .line 17
    .line 18
    new-instance v5, Landroidx/activity/SystemBarStyle;

    .line 19
    .line 20
    sget v2, Landroidx/activity/EdgeToEdge;->DefaultLightScrim:I

    .line 21
    .line 22
    sget v3, Landroidx/activity/EdgeToEdge;->DefaultDarkScrim:I

    .line 23
    .line 24
    invoke-direct {v5, v2, v3, v0}, Landroidx/activity/SystemBarStyle;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    sget-object v0, Landroidx/activity/EdgeToEdge;->Impl:Landroidx/activity/EdgeToEdgeBase;

    .line 42
    .line 43
    if-nez v0, :cond_5

    .line 44
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 v2, 0x23

    .line 48
    .line 49
    if-lt v0, v2, :cond_0

    .line 50
    .line 51
    new-instance v0, Landroidx/activity/EdgeToEdgeApi35;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/16 v2, 0x1e

    .line 58
    .line 59
    if-lt v0, v2, :cond_1

    .line 60
    .line 61
    new-instance v0, Landroidx/activity/EdgeToEdgeApi30;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/16 v2, 0x1d

    .line 68
    .line 69
    if-lt v0, v2, :cond_2

    .line 70
    .line 71
    new-instance v0, Landroidx/activity/EdgeToEdgeApi29;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/16 v2, 0x1c

    .line 78
    .line 79
    if-lt v0, v2, :cond_3

    .line 80
    .line 81
    new-instance v0, Landroidx/activity/EdgeToEdgeApi28;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const/16 v2, 0x1a

    .line 88
    .line 89
    if-lt v0, v2, :cond_4

    .line 90
    .line 91
    new-instance v0, Landroidx/activity/EdgeToEdgeApi26;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    new-instance v0, Landroidx/activity/EdgeToEdgeApi23;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 100
    .line 101
    .line 102
    :goto_0
    sput-object v0, Landroidx/activity/EdgeToEdge;->Impl:Landroidx/activity/EdgeToEdgeBase;

    .line 103
    .line 104
    :cond_5
    move-object v3, v0

    .line 105
    new-instance v2, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;

    .line 106
    .line 107
    const/4 v8, 0x1

    .line 108
    move-object v6, p0

    .line 109
    invoke-direct/range {v2 .. v8}, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 110
    .line 111
    .line 112
    check-cast v7, Landroid/view/ViewGroup;

    .line 113
    .line 114
    :goto_1
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-ge v9, p0, :cond_8

    .line 119
    .line 120
    add-int/lit8 p0, v9, 0x1

    .line 121
    .line 122
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    instance-of v0, v0, Landroidx/activity/EdgeToEdgeBase;

    .line 133
    .line 134
    if-eqz v0, :cond_6

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    move v9, p0

    .line 138
    goto :goto_1

    .line 139
    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 140
    .line 141
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 142
    .line 143
    .line 144
    throw p0

    .line 145
    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    new-instance v0, Landroidx/activity/EdgeToEdge$enableEdgeToEdge$1$2;

    .line 150
    .line 151
    invoke-direct {v0, v2, p0}, Landroidx/activity/EdgeToEdge$enableEdgeToEdge$1$2;-><init>(Landroidx/work/OperationKt$$ExternalSyntheticLambda1;Landroid/content/Context;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    const/16 p0, 0x8

    .line 158
    .line 159
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 166
    .line 167
    .line 168
    :goto_2
    invoke-virtual {v2}, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;->run()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, p0}, Landroidx/activity/EdgeToEdgeBase;->adjustLayoutInDisplayCutoutMode(Landroid/view/Window;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method
