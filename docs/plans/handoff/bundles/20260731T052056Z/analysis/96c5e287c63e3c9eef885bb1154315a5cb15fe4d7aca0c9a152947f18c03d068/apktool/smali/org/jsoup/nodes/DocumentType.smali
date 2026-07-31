.class public final Lorg/jsoup/nodes/DocumentType;
.super Lorg/jsoup/nodes/LeafNode;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final InternalSubsetKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "doctypeInternalSubset"

    .line 2
    .line 3
    const-string v1, "/"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lorg/jsoup/nodes/DocumentType;->InternalSubsetKey:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final has(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    return p0
.end method

.method public final nodeName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "#doctype"

    .line 2
    .line 3
    return-object p0
.end method

.method public final outerHtmlHead(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 4

    .line 1
    iget-object p2, p2, Lorg/jsoup/nodes/Document$OutputSettings;->syntax:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 2
    .line 3
    sget-object v0, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 4
    .line 5
    const-string v1, "systemId"

    .line 6
    .line 7
    const-string v2, "publicId"

    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    const-string p2, "<!doctype"

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p2, "<!DOCTYPE"

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 32
    .line 33
    .line 34
    :goto_0
    const-string p2, "name"

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const-string v3, " "

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {v0, p2}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 53
    .line 54
    .line 55
    :cond_1
    const-string p2, "pubSysKey"

    .line 56
    .line 57
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1, v3}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {v0, p2}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    const/16 v0, 0x22

    .line 79
    .line 80
    const-string v3, " \""

    .line 81
    .line 82
    if-eqz p2, :cond_3

    .line 83
    .line 84
    invoke-virtual {p1, v3}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p2, v2}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p2, v0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_4

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {p2, v1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p2, v0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 118
    .line 119
    .line 120
    :cond_4
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    sget-object v0, Lorg/jsoup/nodes/DocumentType;->InternalSubsetKey:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_5

    .line 131
    .line 132
    const-string p2, " ["

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {p2, p0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    const/16 p2, 0x5d

    .line 147
    .line 148
    invoke-virtual {p0, p2}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 149
    .line 150
    .line 151
    :cond_5
    const/16 p0, 0x3e

    .line 152
    .line 153
    invoke-virtual {p1, p0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 154
    .line 155
    .line 156
    return-void
.end method
