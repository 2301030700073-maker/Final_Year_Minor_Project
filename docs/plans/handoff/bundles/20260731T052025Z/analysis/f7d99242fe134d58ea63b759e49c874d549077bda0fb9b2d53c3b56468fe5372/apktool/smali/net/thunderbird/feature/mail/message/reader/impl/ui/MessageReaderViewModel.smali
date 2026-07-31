.class public final Lnet/thunderbird/feature/mail/message/reader/impl/ui/MessageReaderViewModel;
.super Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final attachmentViewInfoMapper:Lnet/thunderbird/feature/mail/message/reader/api/domain/mapper/AttachmentViewInfoMapper;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/mail/message/reader/api/domain/mapper/AttachmentViewInfoMapper;)V
    .locals 2

    .line 1
    new-instance v0, Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$State;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->EMPTY:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$State;-><init>(Lkotlinx/collections/immutable/ImmutableList;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/reader/impl/ui/MessageReaderViewModel;->attachmentViewInfoMapper:Lnet/thunderbird/feature/mail/message/reader/api/domain/mapper/AttachmentViewInfoMapper;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$Event$UpdateAttachments;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$Event$UpdateAttachments;->nonInlineAttachments:Ljava/util/List;

    .line 7
    .line 8
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$Event$UpdateAttachments;->extraNonInlineAttachments:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    invoke-direct {v1, p0, v0, p1, v2}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->updateState(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
