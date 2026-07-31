.class public final synthetic Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->textEllipsizer:Lorg/schabi/newpipe/util/text/TextEllipsizer;

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->toggle()V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lcoil3/ComponentRegistry$Builder;

    .line 16
    .line 17
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;->selected(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :pswitch_0
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lcoil3/ComponentRegistry$Builder;

    .line 28
    .line 29
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Landroid/content/Context;

    .line 32
    .line 33
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Landroidx/sqlite/SQLite;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p1, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/4 v3, 0x0

    .line 54
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const/4 v5, 0x1

    .line 59
    const-string v6, "CommentRepliesFragment"

    .line 60
    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 68
    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    sget v7, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->$r8$clinit:I

    .line 72
    .line 73
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_1

    .line 82
    .line 83
    invoke-virtual {v1, v4}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    .line 84
    .line 85
    .line 86
    move v3, v5

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    if-eqz v3, :cond_3

    .line 89
    .line 90
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-lez v1, :cond_6

    .line 98
    .line 99
    sget v1, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->$r8$clinit:I

    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    sub-int/2addr v1, v5

    .line 106
    iget-object v2, p1, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-ne v1, v2, :cond_5

    .line 113
    .line 114
    iget-object v1, p1, Landroidx/fragment/app/FragmentManager;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 115
    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 120
    .line 121
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_5
    iget-object v2, p1, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    .line 132
    .line 133
    :goto_2
    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_6

    .line 140
    .line 141
    const/4 v1, -0x1

    .line 142
    invoke-virtual {p1, v1, v5, v6}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(IILjava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-static {p0}, Landroidx/sqlite/SQLite;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    new-instance p1, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;

    .line 155
    .line 156
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;-><init>(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V

    .line 157
    .line 158
    .line 159
    const v0, 0x7f0a01a9

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v0, p1, v6}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v6}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :pswitch_1
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lcoil3/ComponentRegistry$Builder;

    .line 173
    .line 174
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast p0, Landroid/content/Context;

    .line 177
    .line 178
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    .line 179
    .line 180
    invoke-static {p0, v0}, Landroidx/sqlite/SQLite;->openCommentAuthorIfPresent(Landroidx/fragment/app/FragmentActivity;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    nop

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
