.class public final synthetic Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/places/PlacesFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/places/PlacesFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/places/PlacesFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/places/PlacesFragment;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 10
    .line 11
    sget-object v0, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget v0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    if-ne v0, v2, :cond_4

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const-string v2, "langChanged"

    .line 27
    .line 28
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :cond_0
    if-eqz v0, :cond_4

    .line 33
    .line 34
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->annotationCache:Lkotlin/collections/ArrayDeque;

    .line 35
    .line 36
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object v1, p1, Lorg/wikipedia/places/PlacesFragmentViewModel;->highlightedPageTitle:Lorg/wikipedia/page/PageTitle;

    .line 44
    .line 45
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->symbolManager:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget-object v0, p1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->annotations:Landroidx/collection/LongSparseArray;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->updateSource()V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->lastLocation:Landroid/location/Location;

    .line 62
    .line 63
    const-wide/16 v2, 0x0

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move-wide v4, v2

    .line 73
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->lastLocation:Landroid/location/Location;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/places/PlacesFragment;->getSearchRadius()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    move-wide v8, v4

    .line 86
    move-wide v4, v2

    .line 87
    move-wide v2, v8

    .line 88
    invoke-virtual/range {v1 .. v6}, Lorg/wikipedia/places/PlacesFragmentViewModel;->fetchNearbyPages(DDI)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->lastLocation:Landroid/location/Location;

    .line 92
    .line 93
    iget-wide v0, p0, Lorg/wikipedia/places/PlacesFragment;->lastZoom:D

    .line 94
    .line 95
    invoke-virtual {p0, p1, v0, v1}, Lorg/wikipedia/places/PlacesFragment;->goToLocation(Landroid/location/Location;D)V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void

    .line 99
    :pswitch_1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 100
    .line 101
    sget-object v0, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    iget-object v0, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 107
    .line 108
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 109
    .line 110
    const/16 v2, 0x61

    .line 111
    .line 112
    if-ne p1, v2, :cond_7

    .line 113
    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    const-string p1, "location"

    .line 117
    .line 118
    const-class v2, Landroid/location/Location;

    .line 119
    .line 120
    invoke-static {v0, p1, v2}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Landroid/os/Parcelable;

    .line 125
    .line 126
    check-cast p1, Landroid/location/Location;

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    move-object p1, v1

    .line 130
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    const-string v1, "returnLinkTitle"

    .line 136
    .line 137
    const-class v2, Lorg/wikipedia/page/PageTitle;

    .line 138
    .line 139
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Landroid/os/Parcelable;

    .line 144
    .line 145
    move-object v1, v0

    .line 146
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 147
    .line 148
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iput-object v1, v0, Lorg/wikipedia/places/PlacesFragmentViewModel;->highlightedPageTitle:Lorg/wikipedia/page/PageTitle;

    .line 156
    .line 157
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 158
    .line 159
    iget-object v0, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 160
    .line 161
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setPlacesWikiCode(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-wide v0, 0x402fcccccccccccdL    # 15.9

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p1, v0, v1}, Lorg/wikipedia/places/PlacesFragment;->goToLocation(Landroid/location/Location;D)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 179
    .line 180
    .line 181
    move-result-wide v3

    .line 182
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 183
    .line 184
    .line 185
    move-result-wide v5

    .line 186
    invoke-virtual {p0}, Lorg/wikipedia/places/PlacesFragment;->getSearchRadius()I

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    invoke-virtual/range {v2 .. v7}, Lorg/wikipedia/places/PlacesFragmentViewModel;->fetchNearbyPages(DDI)V

    .line 191
    .line 192
    .line 193
    :cond_7
    return-void

    .line 194
    :pswitch_2
    check-cast p1, Ljava/util/Map;

    .line 195
    .line 196
    invoke-static {p0, p1}, Lorg/wikipedia/places/PlacesFragment;->locationPermissionRequest$lambda$0(Lorg/wikipedia/places/PlacesFragment;Ljava/util/Map;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    nop

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUrlClick(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/places/PlacesFragment;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->viewButtonsGroup:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    check-cast p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 13
    .line 14
    const p1, 0x7f090373

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkInternal(IZ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
