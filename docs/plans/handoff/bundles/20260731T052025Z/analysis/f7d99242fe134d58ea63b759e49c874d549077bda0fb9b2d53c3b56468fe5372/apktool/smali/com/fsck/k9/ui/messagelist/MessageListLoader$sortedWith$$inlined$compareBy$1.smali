.class public final Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$1;->$r8$classId:I

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 11
    .line 12
    iget-object p0, p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayName:Ljava/lang/CharSequence;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayName:Ljava/lang/CharSequence;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v1, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :pswitch_0
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 32
    .line 33
    iget-object p0, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayName:Ljava/lang/CharSequence;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 40
    .line 41
    iget-object p1, p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayName:Ljava/lang/CharSequence;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {v1, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :pswitch_1
    check-cast p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 53
    .line 54
    iget-object p0, p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->subject:Ljava/lang/String;

    .line 55
    .line 56
    if-nez p0, :cond_0

    .line 57
    .line 58
    move-object p0, v0

    .line 59
    :cond_0
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->subject:Ljava/lang/String;

    .line 62
    .line 63
    if-nez p1, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move-object v0, p1

    .line 67
    :goto_0
    invoke-interface {v1, p0, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    return p0

    .line 72
    :pswitch_2
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 73
    .line 74
    iget-object p0, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->subject:Ljava/lang/String;

    .line 75
    .line 76
    if-nez p0, :cond_2

    .line 77
    .line 78
    move-object p0, v0

    .line 79
    :cond_2
    check-cast p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 80
    .line 81
    iget-object p1, p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->subject:Ljava/lang/String;

    .line 82
    .line 83
    if-nez p1, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    move-object v0, p1

    .line 87
    :goto_1
    invoke-interface {v1, p0, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    return p0

    .line 92
    :pswitch_3
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 93
    .line 94
    iget-boolean p0, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->hasAttachments:Z

    .line 95
    .line 96
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    check-cast p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 101
    .line 102
    iget-boolean p1, p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->hasAttachments:Z

    .line 103
    .line 104
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    return p0

    .line 113
    :pswitch_4
    check-cast p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 114
    .line 115
    iget-wide v0, p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->internalDate:J

    .line 116
    .line 117
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 122
    .line 123
    iget-wide p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->internalDate:J

    .line 124
    .line 125
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    return p0

    .line 134
    :pswitch_5
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 135
    .line 136
    iget-wide p0, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->internalDate:J

    .line 137
    .line 138
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    check-cast p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 143
    .line 144
    iget-wide p1, p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->internalDate:J

    .line 145
    .line 146
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    return p0

    .line 155
    :pswitch_6
    check-cast p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 156
    .line 157
    iget-wide v0, p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageDate:J

    .line 158
    .line 159
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 164
    .line 165
    iget-wide p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageDate:J

    .line 166
    .line 167
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    return p0

    .line 176
    :pswitch_7
    check-cast p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 177
    .line 178
    iget-boolean p0, p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->hasAttachments:Z

    .line 179
    .line 180
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 185
    .line 186
    iget-boolean p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->hasAttachments:Z

    .line 187
    .line 188
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    return p0

    .line 197
    :pswitch_8
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 198
    .line 199
    iget-wide p0, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageDate:J

    .line 200
    .line 201
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    check-cast p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 206
    .line 207
    iget-wide p1, p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageDate:J

    .line 208
    .line 209
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    return p0

    .line 218
    nop

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
