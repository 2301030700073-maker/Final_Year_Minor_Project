.class public final Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$5;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $config$inlined:Lcom/fsck/k9/ui/messagelist/MessageListConfig;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListConfig;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$5;->$config$inlined:Lcom/fsck/k9/ui/messagelist/MessageListConfig;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$5;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListLoader$sortedWith$$inlined$compareBy$5;->$config$inlined:Lcom/fsck/k9/ui/messagelist/MessageListConfig;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListConfig;->sortOverrides:Ljava/util/Map;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-boolean p2, v0, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;->isStarred:Z

    .line 25
    .line 26
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-boolean p2, p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isStarred:Z

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :goto_1
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListConfig;->sortOverrides:Ljava/util/Map;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;

    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    iget-boolean p0, p0, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;->isStarred:Z

    .line 51
    .line 52
    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    goto :goto_3

    .line 57
    :cond_1
    iget-boolean p0, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isStarred:Z

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :goto_3
    invoke-virtual {p2, p0}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    return p0

    .line 65
    :pswitch_0
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListConfig;->sortOverrides:Ljava/util/Map;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iget-boolean p1, v0, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;->isStarred:Z

    .line 82
    .line 83
    :goto_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    goto :goto_5

    .line 88
    :cond_2
    iget-boolean p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isStarred:Z

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :goto_5
    check-cast p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 92
    .line 93
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListConfig;->sortOverrides:Ljava/util/Map;

    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;

    .line 104
    .line 105
    if-eqz p0, :cond_3

    .line 106
    .line 107
    iget-boolean p0, p0, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;->isStarred:Z

    .line 108
    .line 109
    :goto_6
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    goto :goto_7

    .line 114
    :cond_3
    iget-boolean p0, p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isStarred:Z

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :goto_7
    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Object;)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    return p0

    .line 122
    :pswitch_1
    check-cast p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 123
    .line 124
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListConfig;->sortOverrides:Ljava/util/Map;

    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;

    .line 135
    .line 136
    if-eqz v0, :cond_4

    .line 137
    .line 138
    iget-boolean p2, v0, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;->isRead:Z

    .line 139
    .line 140
    :goto_8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    goto :goto_9

    .line 145
    :cond_4
    iget-boolean p2, p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isRead:Z

    .line 146
    .line 147
    goto :goto_8

    .line 148
    :goto_9
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 149
    .line 150
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListConfig;->sortOverrides:Ljava/util/Map;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;

    .line 161
    .line 162
    if-eqz p0, :cond_5

    .line 163
    .line 164
    iget-boolean p0, p0, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;->isRead:Z

    .line 165
    .line 166
    :goto_a
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    goto :goto_b

    .line 171
    :cond_5
    iget-boolean p0, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isRead:Z

    .line 172
    .line 173
    goto :goto_a

    .line 174
    :goto_b
    invoke-virtual {p2, p0}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Object;)I

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    return p0

    .line 179
    :pswitch_2
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 180
    .line 181
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListConfig;->sortOverrides:Ljava/util/Map;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;

    .line 192
    .line 193
    if-eqz v0, :cond_6

    .line 194
    .line 195
    iget-boolean p1, v0, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;->isRead:Z

    .line 196
    .line 197
    :goto_c
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    goto :goto_d

    .line 202
    :cond_6
    iget-boolean p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isRead:Z

    .line 203
    .line 204
    goto :goto_c

    .line 205
    :goto_d
    check-cast p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 206
    .line 207
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListConfig;->sortOverrides:Ljava/util/Map;

    .line 208
    .line 209
    invoke-virtual {p2}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;

    .line 218
    .line 219
    if-eqz p0, :cond_7

    .line 220
    .line 221
    iget-boolean p0, p0, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;->isRead:Z

    .line 222
    .line 223
    :goto_e
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    goto :goto_f

    .line 228
    :cond_7
    iget-boolean p0, p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isRead:Z

    .line 229
    .line 230
    goto :goto_e

    .line 231
    :goto_f
    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Object;)I

    .line 232
    .line 233
    .line 234
    move-result p0

    .line 235
    return p0

    .line 236
    nop

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
