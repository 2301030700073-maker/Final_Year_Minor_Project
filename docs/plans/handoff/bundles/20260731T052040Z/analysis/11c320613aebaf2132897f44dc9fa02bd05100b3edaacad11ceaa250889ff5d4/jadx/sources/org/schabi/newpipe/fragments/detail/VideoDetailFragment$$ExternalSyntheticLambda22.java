package org.schabi.newpipe.fragments.detail;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.compose.ui.node.Owner;
import androidx.fragment.app.Fragment;
import androidx.sqlite.SQLite;
import androidx.transition.Transition;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.function.Consumer;
import kotlin.io.CloseableKt;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.fragments.MainFragment;
import org.schabi.newpipe.local.dialog.PlaylistDialog;
import org.schabi.newpipe.local.playlist.LocalPlaylistFragment;
import org.schabi.newpipe.player.ui.MainPlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class VideoDetailFragment$$ExternalSyntheticLambda22 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ VideoDetailFragment f$0;

    public /* synthetic */ VideoDetailFragment$$ExternalSyntheticLambda22(VideoDetailFragment videoDetailFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = videoDetailFragment;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        int i = this.$r8$classId;
        VideoDetailFragment videoDetailFragment = this.f$0;
        switch (i) {
            case 0:
                LinkedList linkedList = VideoDetailFragment.stack;
                Transition.Impl26.copyToClipboard(videoDetailFragment.requireContext(), videoDetailFragment.binding.detailVideoTitleView.getText().toString());
                break;
            case 1:
                StreamInfo streamInfo = (StreamInfo) obj;
                LinkedList linkedList2 = VideoDetailFragment.stack;
                if (!TextUtils.isEmpty(streamInfo.getSubChannelUrl())) {
                    videoDetailFragment.openChannel(streamInfo.getUploaderUrl(), streamInfo.getUploaderName());
                    break;
                } else {
                    Log.w(videoDetailFragment.TAG, "Can't open parent channel because we got no parent channel URL");
                    break;
                }
            case 2:
                LinkedList linkedList3 = VideoDetailFragment.stack;
                videoDetailFragment.openBackgroundPlayer(true);
                break;
            case 3:
                LinkedList linkedList4 = VideoDetailFragment.stack;
                videoDetailFragment.openPopupPlayer(true);
                break;
            case 4:
                LinkedList linkedList5 = VideoDetailFragment.stack;
                SQLite.openDownloads(videoDetailFragment.activity);
                break;
            case 5:
                StreamInfo streamInfo2 = (StreamInfo) obj;
                LinkedList linkedList6 = VideoDetailFragment.stack;
                videoDetailFragment.openChannel(streamInfo2.getUploaderUrl(), streamInfo2.getUploaderName());
                break;
            case 6:
                StreamInfo streamInfo3 = (StreamInfo) obj;
                LinkedList linkedList7 = VideoDetailFragment.stack;
                if (!TextUtils.isEmpty(streamInfo3.getSubChannelUrl())) {
                    videoDetailFragment.openChannel(streamInfo3.getSubChannelUrl(), streamInfo3.getSubChannelName());
                    break;
                } else if (!TextUtils.isEmpty(streamInfo3.getUploaderUrl())) {
                    videoDetailFragment.openChannel(streamInfo3.getUploaderUrl(), streamInfo3.getUploaderName());
                    break;
                }
                break;
            case 7:
                StreamInfo streamInfo4 = (StreamInfo) obj;
                LinkedList linkedList8 = VideoDetailFragment.stack;
                if (videoDetailFragment.getFM() != null && videoDetailFragment.currentInfo != null) {
                    Fragment findFragmentById = videoDetailFragment.getParentFragmentManager().findFragmentById(R.id.fragment_holder);
                    if (findFragmentById instanceof LocalPlaylistFragment) {
                        ((LocalPlaylistFragment) findFragmentById).saveImmediate();
                    } else if (findFragmentById instanceof MainFragment) {
                        ((MainFragment) findFragmentById).commitPlaylistTabs();
                    }
                    CompositeDisposable compositeDisposable = videoDetailFragment.disposables;
                    Context requireContext = videoDetailFragment.requireContext();
                    Object[] objArr = {new StreamEntity(streamInfo4)};
                    ArrayList arrayList = new ArrayList(1);
                    Object obj2 = objArr[0];
                    compositeDisposable.add(PlaylistDialog.createCorrespondingDialog(requireContext, Owner.CC.m(obj2, arrayList, obj2, arrayList), new VideoDetailFragment$$ExternalSyntheticLambda22(videoDetailFragment, 11)));
                    break;
                }
                break;
            case 8:
                StreamInfo streamInfo5 = (StreamInfo) obj;
                LinkedList linkedList9 = VideoDetailFragment.stack;
                Transition.Impl26.shareText(videoDetailFragment.requireContext(), streamInfo5.getName(), streamInfo5.getUrl(), streamInfo5.getThumbnails());
                break;
            case 9:
                LinkedList linkedList10 = VideoDetailFragment.stack;
                Transition.Impl26.openUrlInBrowser(videoDetailFragment.requireContext(), ((StreamInfo) obj).getUrl());
                break;
            case 10:
                LinkedList linkedList11 = VideoDetailFragment.stack;
                CloseableKt.playWithKore(videoDetailFragment.requireContext(), Uri.parse(((StreamInfo) obj).getUrl()));
                break;
            case 11:
                LinkedList linkedList12 = VideoDetailFragment.stack;
                ((PlaylistDialog) obj).show(videoDetailFragment.getParentFragmentManager(), videoDetailFragment.TAG);
                break;
            default:
                MainPlayerUi mainPlayerUi = (MainPlayerUi) obj;
                if (videoDetailFragment.binding != null) {
                    mainPlayerUi.removeViewFromParent();
                    videoDetailFragment.binding.playerPlaceholder.addView(mainPlayerUi.binding.rootView);
                    mainPlayerUi.setupVideoSurfaceIfNeeded();
                    break;
                }
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
