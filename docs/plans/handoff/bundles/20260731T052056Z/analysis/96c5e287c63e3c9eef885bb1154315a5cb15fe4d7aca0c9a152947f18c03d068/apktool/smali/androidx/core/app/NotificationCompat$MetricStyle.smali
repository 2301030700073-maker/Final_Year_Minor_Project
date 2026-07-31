.class public final Landroidx/core/app/NotificationCompat$MetricStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public mCriticalMetric:I

.field public final mMetrics:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mCriticalMetric:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final addCompatExtras(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x25

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_7

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroidx/core/app/NotificationCompat$Metric;

    .line 33
    .line 34
    new-instance v3, Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v4, v2, Landroidx/core/app/NotificationCompat$Metric;->mValue:Landroidx/core/app/NotificationCompat$Metric$MetricValue;

    .line 40
    .line 41
    new-instance v5, Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 44
    .line 45
    .line 46
    instance-of v6, v4, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;

    .line 47
    .line 48
    const-string v7, "_type"

    .line 49
    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    const/4 v6, 0x1

    .line 53
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    instance-of v6, v4, Landroidx/core/app/NotificationCompat$Metric$FixedDate;

    .line 58
    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    const/4 v6, 0x2

    .line 62
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    instance-of v6, v4, Landroidx/core/app/NotificationCompat$Metric$FixedTime;

    .line 67
    .line 68
    if-eqz v6, :cond_3

    .line 69
    .line 70
    const/4 v6, 0x3

    .line 71
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    instance-of v6, v4, Landroidx/core/app/NotificationCompat$Metric$FixedInt;

    .line 76
    .line 77
    if-eqz v6, :cond_4

    .line 78
    .line 79
    const/4 v6, 0x4

    .line 80
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    instance-of v6, v4, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;

    .line 85
    .line 86
    if-eqz v6, :cond_5

    .line 87
    .line 88
    const/4 v6, 0x5

    .line 89
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    instance-of v6, v4, Landroidx/core/app/NotificationCompat$Metric$FixedText;

    .line 94
    .line 95
    if-eqz v6, :cond_6

    .line 96
    .line 97
    const/4 v6, 0x6

    .line 98
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    :goto_1
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Metric$MetricValue;->toBundle(Landroid/os/Bundle;)V

    .line 102
    .line 103
    .line 104
    const-string/jumbo v4, "value"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    const-string v4, "label"

    .line 111
    .line 112
    iget-object v5, v2, Landroidx/core/app/NotificationCompat$Metric;->mLabel:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string v4, "semanticStyle"

    .line 118
    .line 119
    iget v2, v2, Landroidx/core/app/NotificationCompat$Metric;->mSemanticStyle:I

    .line 120
    .line 121
    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_6
    const-string p0, "Impossible MetricValue subclass: "

    .line 129
    .line 130
    invoke-static {p0, v4}, Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_7
    const-string v1, "android.metrics"

    .line 135
    .line 136
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 137
    .line 138
    .line 139
    const-string v0, "android.metrics.criticalIndex"

    .line 140
    .line 141
    iget p0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mCriticalMetric:I

    .line 142
    .line 143
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public final apply(Lokhttp3/Dispatcher;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x25

    .line 12
    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Landroid/app/Notification$Builder;

    .line 18
    .line 19
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$MetricStyle$Api37Impl;->-$$Nest$smtoPlatformStyle(Landroidx/core/app/NotificationCompat$MetricStyle;)Landroid/app/Notification$Style;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    const-string p0, "A MetricStyle must have at least one Metric"

    .line 28
    .line 29
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final clearCompatExtraKeys(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->clearCompatExtraKeys(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string p0, "android.metrics"

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string p0, "android.metrics.criticalIndex"

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/core/app/NotificationCompat$MetricStyle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    check-cast p1, Landroidx/core/app/NotificationCompat$MetricStyle;

    .line 7
    .line 8
    if-ne p0, p1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v1, p1, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget p0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mCriticalMetric:I

    .line 22
    .line 23
    iget p1, p1, Landroidx/core/app/NotificationCompat$MetricStyle;->mCriticalMetric:I

    .line 24
    .line 25
    if-ne p0, p1, :cond_2

    .line 26
    .line 27
    :goto_0
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "androidx.core.app.NotificationCompat$MetricStyle"

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mCriticalMetric:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/ArrayList;

    .line 12
    .line 13
    aput-object p0, v1, v2

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    aput-object v0, v1, p0

    .line 17
    .line 18
    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    const-string v3, "android.metrics"

    .line 14
    .line 15
    const-class v4, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-static {v1, v3, v4}, Landroidx/room/Room;->getParcelableArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_a

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_a

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Landroid/os/Bundle;

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    const-string/jumbo v6, "value"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    const/4 v8, 0x0

    .line 50
    if-nez v7, :cond_1

    .line 51
    .line 52
    goto/16 :goto_7

    .line 53
    .line 54
    :cond_1
    const-string v9, "_type"

    .line 55
    .line 56
    invoke-virtual {v7, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    const-string v10, "format"

    .line 61
    .line 62
    const-string/jumbo v11, "unit"

    .line 63
    .line 64
    .line 65
    packed-switch v9, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    :cond_2
    move-object v9, v8

    .line 69
    goto/16 :goto_6

    .line 70
    .line 71
    :pswitch_0
    new-instance v9, Landroidx/core/app/NotificationCompat$Metric$FixedText;

    .line 72
    .line 73
    const-string v10, ""

    .line 74
    .line 75
    invoke-virtual {v7, v6, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v7, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-direct {v9, v6, v7}, Landroidx/core/app/NotificationCompat$Metric$FixedText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_6

    .line 87
    .line 88
    :pswitch_1
    new-instance v9, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;

    .line 89
    .line 90
    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    invoke-virtual {v7, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    const-string v11, "minDigits"

    .line 99
    .line 100
    invoke-virtual {v7, v11, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    const-string v12, "maxDigits"

    .line 105
    .line 106
    const/4 v13, 0x2

    .line 107
    invoke-virtual {v7, v12, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    invoke-direct {v9, v6, v10, v11, v7}, Landroidx/core/app/NotificationCompat$Metric$FixedFloat;-><init>(FLjava/lang/String;II)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_6

    .line 115
    .line 116
    :pswitch_2
    new-instance v9, Landroidx/core/app/NotificationCompat$Metric$FixedInt;

    .line 117
    .line 118
    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    invoke-virtual {v7, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-direct {v9, v6, v7}, Landroidx/core/app/NotificationCompat$Metric$FixedInt;-><init>(ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_6

    .line 130
    .line 131
    :pswitch_3
    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    if-eqz v9, :cond_3

    .line 136
    .line 137
    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v6

    .line 141
    invoke-static {v6, v7}, Lj$/time/LocalTime;->ofSecondOfDay(J)Lj$/time/LocalTime;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    goto :goto_1

    .line 146
    :cond_3
    move-object v6, v8

    .line 147
    :goto_1
    if-eqz v6, :cond_2

    .line 148
    .line 149
    new-instance v9, Landroidx/core/app/NotificationCompat$Metric$FixedTime;

    .line 150
    .line 151
    invoke-direct {v9, v6}, Landroidx/core/app/NotificationCompat$Metric$FixedTime;-><init>(Lj$/time/LocalTime;)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_6

    .line 155
    .line 156
    :pswitch_4
    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    if-eqz v9, :cond_4

    .line 161
    .line 162
    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 163
    .line 164
    .line 165
    move-result-wide v11

    .line 166
    invoke-static {v11, v12}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    goto :goto_2

    .line 171
    :cond_4
    move-object v6, v8

    .line 172
    :goto_2
    if-eqz v6, :cond_2

    .line 173
    .line 174
    invoke-virtual {v7, v10, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    new-instance v9, Landroidx/core/app/NotificationCompat$Metric$FixedDate;

    .line 179
    .line 180
    invoke-direct {v9, v6, v7}, Landroidx/core/app/NotificationCompat$Metric$FixedDate;-><init>(Lj$/time/LocalDate;I)V

    .line 181
    .line 182
    .line 183
    goto :goto_6

    .line 184
    :pswitch_5
    const-string/jumbo v6, "zeroTime"

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    if-eqz v9, :cond_5

    .line 192
    .line 193
    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 194
    .line 195
    .line 196
    move-result-wide v11

    .line 197
    invoke-static {v11, v12}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    move-object v12, v6

    .line 202
    goto :goto_3

    .line 203
    :cond_5
    move-object v12, v8

    .line 204
    :goto_3
    const-string/jumbo v6, "zeroElapsedRealtime"

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    if-eqz v9, :cond_6

    .line 212
    .line 213
    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 214
    .line 215
    .line 216
    move-result-wide v13

    .line 217
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    move-object v13, v6

    .line 222
    goto :goto_4

    .line 223
    :cond_6
    move-object v13, v8

    .line 224
    :goto_4
    const-string v6, "pausedDuration"

    .line 225
    .line 226
    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    if-eqz v9, :cond_7

    .line 231
    .line 232
    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 233
    .line 234
    .line 235
    move-result-wide v14

    .line 236
    invoke-static {v14, v15}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    move-object v14, v6

    .line 241
    goto :goto_5

    .line 242
    :cond_7
    move-object v14, v8

    .line 243
    :goto_5
    if-nez v12, :cond_8

    .line 244
    .line 245
    if-nez v13, :cond_8

    .line 246
    .line 247
    if-eqz v14, :cond_2

    .line 248
    .line 249
    :cond_8
    new-instance v11, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;

    .line 250
    .line 251
    const-string v6, "countDown"

    .line 252
    .line 253
    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v15

    .line 257
    invoke-virtual {v7, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    move-result v16

    .line 261
    invoke-direct/range {v11 .. v16}, Landroidx/core/app/NotificationCompat$Metric$TimeDifference;-><init>(Lj$/time/Instant;Ljava/lang/Long;Lj$/time/Duration;ZI)V

    .line 262
    .line 263
    .line 264
    move-object v9, v11

    .line 265
    :goto_6
    if-nez v9, :cond_9

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_9
    const-string v6, "label"

    .line 269
    .line 270
    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    const-string v7, "semanticStyle"

    .line 275
    .line 276
    invoke-virtual {v5, v7, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    new-instance v8, Landroidx/core/app/NotificationCompat$Metric;

    .line 281
    .line 282
    invoke-direct {v8, v9, v6, v5}, Landroidx/core/app/NotificationCompat$Metric;-><init>(Landroidx/core/app/NotificationCompat$Metric$MetricValue;Ljava/lang/String;I)V

    .line 283
    .line 284
    .line 285
    :goto_7
    if-eqz v8, :cond_0

    .line 286
    .line 287
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    goto/16 :goto_0

    .line 291
    .line 292
    :cond_a
    const-string v2, "android.metrics.criticalIndex"

    .line 293
    .line 294
    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    iput v1, v0, Landroidx/core/app/NotificationCompat$MetricStyle;->mCriticalMetric:I

    .line 299
    .line 300
    return-void

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MetricStyle{mMetrics="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mMetrics:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mCriticalMetric="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p0, p0, Landroidx/core/app/NotificationCompat$MetricStyle;->mCriticalMetric:I

    .line 19
    .line 20
    const-string/jumbo v1, "}"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
