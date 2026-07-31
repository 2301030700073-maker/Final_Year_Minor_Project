.class public abstract Lorg/wikipedia/compose/theme/WikipediaColorKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final BlackColors:Lorg/wikipedia/compose/theme/WikipediaColor;

.field public static final DarkColors:Lorg/wikipedia/compose/theme/WikipediaColor;

.field public static final LightColors:Lorg/wikipedia/compose/theme/WikipediaColor;

.field public static final LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final SepiaColors:Lorg/wikipedia/compose/theme/WikipediaColor;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    .line 1
    new-instance v0, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 14
    .line 15
    new-instance v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 16
    .line 17
    sget-wide v5, Lorg/wikipedia/compose/ComposeColors;->Gray700:J

    .line 18
    .line 19
    sget-wide v7, Lorg/wikipedia/compose/ComposeColors;->White:J

    .line 20
    .line 21
    sget-wide v9, Lorg/wikipedia/compose/ComposeColors;->Gray100:J

    .line 22
    .line 23
    sget-wide v11, Lorg/wikipedia/compose/ComposeColors;->Gray400:J

    .line 24
    .line 25
    sget-wide v13, Lorg/wikipedia/compose/ComposeColors;->Gray500:J

    .line 26
    .line 27
    sget-wide v16, Lorg/wikipedia/compose/ComposeColors;->Gray600:J

    .line 28
    .line 29
    move-wide/from16 v15, v16

    .line 30
    .line 31
    sget-wide v17, Lorg/wikipedia/compose/ComposeColors;->Gray200:J

    .line 32
    .line 33
    sget-wide v19, Lorg/wikipedia/compose/ComposeColors;->Blue600:J

    .line 34
    .line 35
    sget-wide v21, Lorg/wikipedia/compose/ComposeColors;->Green700:J

    .line 36
    .line 37
    sget-wide v23, Lorg/wikipedia/compose/ComposeColors;->Red700:J

    .line 38
    .line 39
    sget-wide v25, Lorg/wikipedia/compose/ComposeColors;->Yellow700:J

    .line 40
    .line 41
    sget-wide v27, Lorg/wikipedia/compose/ComposeColors;->Yellow500:J

    .line 42
    .line 43
    sget-wide v29, Lorg/wikipedia/compose/ComposeColors;->Orange500:J

    .line 44
    .line 45
    sget-wide v32, Lorg/wikipedia/compose/ComposeColors;->Blue300_15:J

    .line 46
    .line 47
    sget-wide v34, Lorg/wikipedia/compose/ComposeColors;->Black_30:J

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    move-wide/from16 v31, v32

    .line 51
    .line 52
    move-wide/from16 v33, v34

    .line 53
    .line 54
    invoke-direct/range {v3 .. v34}, Lorg/wikipedia/compose/theme/WikipediaColor;-><init>(ZJJJJJJJJJJJJJJJ)V

    .line 55
    .line 56
    .line 57
    move-wide v0, v15

    .line 58
    move-wide/from16 v36, v19

    .line 59
    .line 60
    move-wide/from16 v38, v21

    .line 61
    .line 62
    move-wide/from16 v40, v23

    .line 63
    .line 64
    move-wide/from16 v42, v25

    .line 65
    .line 66
    move-wide/from16 v44, v27

    .line 67
    .line 68
    move-wide/from16 v26, v29

    .line 69
    .line 70
    move-wide/from16 v46, v31

    .line 71
    .line 72
    move-wide/from16 v48, v33

    .line 73
    .line 74
    sput-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LightColors:Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 75
    .line 76
    new-instance v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 77
    .line 78
    move-wide/from16 v50, v13

    .line 79
    .line 80
    move-wide v14, v11

    .line 81
    move-wide/from16 v12, v50

    .line 82
    .line 83
    sget-wide v10, Lorg/wikipedia/compose/ComposeColors;->Gray675:J

    .line 84
    .line 85
    move-wide v8, v5

    .line 86
    move-wide/from16 v6, v17

    .line 87
    .line 88
    sget-wide v16, Lorg/wikipedia/compose/ComposeColors;->Gray300:J

    .line 89
    .line 90
    sget-wide v18, Lorg/wikipedia/compose/ComposeColors;->Gray650:J

    .line 91
    .line 92
    sget-wide v20, Lorg/wikipedia/compose/ComposeColors;->Blue300:J

    .line 93
    .line 94
    sget-wide v22, Lorg/wikipedia/compose/ComposeColors;->Green600:J

    .line 95
    .line 96
    sget-wide v24, Lorg/wikipedia/compose/ComposeColors;->Red500:J

    .line 97
    .line 98
    sget-wide v28, Lorg/wikipedia/compose/ComposeColors;->Yellow500_40:J

    .line 99
    .line 100
    sget-wide v30, Lorg/wikipedia/compose/ComposeColors;->Orange500_50:J

    .line 101
    .line 102
    sget-wide v32, Lorg/wikipedia/compose/ComposeColors;->Blue600_30:J

    .line 103
    .line 104
    sget-wide v34, Lorg/wikipedia/compose/ComposeColors;->Black_70:J

    .line 105
    .line 106
    const/4 v5, 0x1

    .line 107
    invoke-direct/range {v4 .. v35}, Lorg/wikipedia/compose/theme/WikipediaColor;-><init>(ZJJJJJJJJJJJJJJJ)V

    .line 108
    .line 109
    .line 110
    move-wide/from16 v2, v16

    .line 111
    .line 112
    move-wide/from16 v17, v6

    .line 113
    .line 114
    move-wide v5, v8

    .line 115
    sput-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->DarkColors:Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 116
    .line 117
    new-instance v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 118
    .line 119
    const/4 v5, 0x1

    .line 120
    move-wide v6, v8

    .line 121
    sget-wide v8, Lorg/wikipedia/compose/ComposeColors;->Black:J

    .line 122
    .line 123
    move-wide v14, v12

    .line 124
    move-wide/from16 v50, v10

    .line 125
    .line 126
    move-wide v10, v6

    .line 127
    move-wide/from16 v6, v17

    .line 128
    .line 129
    move-wide/from16 v18, v50

    .line 130
    .line 131
    move-wide/from16 v16, v2

    .line 132
    .line 133
    invoke-direct/range {v4 .. v35}, Lorg/wikipedia/compose/theme/WikipediaColor;-><init>(ZJJJJJJJJJJJJJJJ)V

    .line 134
    .line 135
    .line 136
    move-wide v5, v10

    .line 137
    sput-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->BlackColors:Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 138
    .line 139
    new-instance v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 140
    .line 141
    sget-wide v8, Lorg/wikipedia/compose/ComposeColors;->Beige100:J

    .line 142
    .line 143
    sget-wide v10, Lorg/wikipedia/compose/ComposeColors;->Beige300:J

    .line 144
    .line 145
    sget-wide v12, Lorg/wikipedia/compose/ComposeColors;->Taupe200:J

    .line 146
    .line 147
    sget-wide v14, Lorg/wikipedia/compose/ComposeColors;->Taupe600:J

    .line 148
    .line 149
    sget-wide v18, Lorg/wikipedia/compose/ComposeColors;->Beige400:J

    .line 150
    .line 151
    move-wide v6, v5

    .line 152
    const/4 v5, 0x0

    .line 153
    move-wide/from16 v16, v0

    .line 154
    .line 155
    move-wide/from16 v30, v26

    .line 156
    .line 157
    move-wide/from16 v20, v36

    .line 158
    .line 159
    move-wide/from16 v22, v38

    .line 160
    .line 161
    move-wide/from16 v24, v40

    .line 162
    .line 163
    move-wide/from16 v26, v42

    .line 164
    .line 165
    move-wide/from16 v28, v44

    .line 166
    .line 167
    move-wide/from16 v32, v46

    .line 168
    .line 169
    move-wide/from16 v34, v48

    .line 170
    .line 171
    invoke-direct/range {v4 .. v35}, Lorg/wikipedia/compose/theme/WikipediaColor;-><init>(ZJJJJJJJJJJJJJJJ)V

    .line 172
    .line 173
    .line 174
    sput-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->SepiaColors:Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 175
    .line 176
    return-void
.end method
