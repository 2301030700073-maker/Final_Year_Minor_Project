.class public final synthetic Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/ui/text/font/SystemFontFamily;

    .line 11
    .line 12
    check-cast p2, Landroidx/compose/ui/text/font/FontWeight;

    .line 13
    .line 14
    check-cast p3, Landroidx/compose/ui/text/font/FontStyle;

    .line 15
    .line 16
    check-cast p4, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 19
    .line 20
    iget p3, p3, Landroidx/compose/ui/text/font/FontStyle;->value:I

    .line 21
    .line 22
    iget p4, p4, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    .line 23
    .line 24
    check-cast v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->resolve-DPcqOEQ(Landroidx/compose/ui/text/font/SystemFontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    instance-of p2, p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 31
    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    new-instance p2, Lorg/acra/util/ProcessFinisher;

    .line 35
    .line 36
    iget-object p3, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Lorg/acra/util/ProcessFinisher;

    .line 37
    .line 38
    invoke-direct {p2, p1, p3}, Lorg/acra/util/ProcessFinisher;-><init>(Landroidx/compose/ui/text/font/TypefaceResult$Immutable;Lorg/acra/util/ProcessFinisher;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Lorg/acra/util/ProcessFinisher;

    .line 42
    .line 43
    iget-object p0, p2, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    check-cast p0, Landroid/graphics/Typeface;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p0, p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    check-cast p0, Landroid/graphics/Typeface;

    .line 57
    .line 58
    :goto_0
    return-object p0

    .line 59
    :pswitch_0
    check-cast p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 60
    .line 61
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 62
    .line 63
    check-cast p2, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 69
    .line 70
    check-cast p4, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    and-int/lit8 p4, p2, 0x6

    .line 77
    .line 78
    if-nez p4, :cond_2

    .line 79
    .line 80
    move-object p4, p3

    .line 81
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 82
    .line 83
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p4

    .line 87
    if-eqz p4, :cond_1

    .line 88
    .line 89
    const/4 p4, 0x4

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    const/4 p4, 0x2

    .line 92
    :goto_1
    or-int/2addr p2, p4

    .line 93
    :cond_2
    and-int/lit16 p4, p2, 0x83

    .line 94
    .line 95
    const/16 v0, 0x82

    .line 96
    .line 97
    if-eq p4, v0, :cond_3

    .line 98
    .line 99
    const/4 p4, 0x1

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const/4 p4, 0x0

    .line 102
    :goto_2
    and-int/lit8 v0, p2, 0x1

    .line 103
    .line 104
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 105
    .line 106
    invoke-virtual {p3, v0, p4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 107
    .line 108
    .line 109
    move-result p4

    .line 110
    if-eqz p4, :cond_4

    .line 111
    .line 112
    and-int/lit8 p2, p2, 0xe

    .line 113
    .line 114
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p0, p1, p3, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 123
    .line 124
    .line 125
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 126
    .line 127
    return-object p0

    .line 128
    :pswitch_1
    check-cast p0, Landroidx/sqlite/db/SupportSQLiteQuery;

    .line 129
    .line 130
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 131
    .line 132
    check-cast p2, Landroid/database/sqlite/SQLiteCursorDriver;

    .line 133
    .line 134
    check-cast p3, Ljava/lang/String;

    .line 135
    .line 136
    check-cast p4, Landroid/database/sqlite/SQLiteQuery;

    .line 137
    .line 138
    new-instance p1, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;

    .line 139
    .line 140
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-direct {p1, p4}, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteQuery;->bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V

    .line 147
    .line 148
    .line 149
    new-instance p0, Landroid/database/sqlite/SQLiteCursor;

    .line 150
    .line 151
    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 152
    .line 153
    .line 154
    return-object p0

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
