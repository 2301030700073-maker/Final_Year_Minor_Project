package org.schabi.newpipe.extractor.utils;

import android.content.Context;
import android.net.Uri;
import androidx.compose.ui.node.Owner;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.transition.Transition;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.io.CloseableKt;
import kotlin.text.UStringsKt;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.typedarrays.NativeArrayBuffer;
import org.mozilla.javascript.typedarrays.NativeInt32Array;
import org.mozilla.javascript.typedarrays.NativeInt8Array;
import org.mozilla.javascript.typedarrays.NativeTypedArrayView;
import org.mozilla.javascript.typedarrays.NativeUint16Array;
import org.mozilla.javascript.typedarrays.NativeUint32Array;
import org.mozilla.javascript.typedarrays.NativeUint8Array;
import org.mozilla.javascript.typedarrays.NativeUint8ClampedArray;
import org.ocpsoft.prettytime.PrettyTime$$ExternalSyntheticLambda0;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.download.DownloadDialog;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment;
import org.schabi.newpipe.fragments.list.channel.ChannelFragment;
import org.schabi.newpipe.fragments.list.playlist.PlaylistFragment;
import org.schabi.newpipe.fragments.list.search.SearchFragment;
import org.schabi.newpipe.fragments.list.search.SuggestionItem;
import org.schabi.newpipe.info_list.dialog.StreamDialogEntry;
import org.schabi.newpipe.local.dialog.PlaylistAppendDialog;
import org.schabi.newpipe.local.dialog.PlaylistDialog;
import org.schabi.newpipe.util.SparseItemUtil$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Utils$$ExternalSyntheticBUOutline0 implements NativeTypedArrayView.RealThis, NativeTypedArrayView.TypedArrayConstructable, Consumer, Action, Function, BiFunction, StreamDialogEntry.StreamDialogEntryAction {
    public final /* synthetic */ int $r8$classId;

    public static /* synthetic */ void m(String str) {
        throw new ParsingException(str);
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        switch (this.$r8$classId) {
            case 13:
                LinkedList linkedList = VideoDetailFragment.stack;
                break;
            case 14:
                LinkedList linkedList2 = VideoDetailFragment.stack;
                break;
            case 15:
                int i = ChannelFragment.$r8$clinit;
                break;
            case 16:
            case 17:
            default:
                int i2 = SearchFragment.$r8$clinit;
                break;
            case 18:
                int i3 = PlaylistFragment.$r8$clinit;
                break;
            case 19:
                int i4 = PlaylistFragment.$r8$clinit;
                break;
        }
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        List list = (List) obj;
        switch (this.$r8$classId) {
            case 17:
                return Boolean.valueOf(list.isEmpty());
            case 23:
                return SearchFragment.$r8$lambda$mmPjPW93nDks_6G8XnBg7Up1Kms(list);
            default:
                int i = SearchFragment.$r8$clinit;
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new SuggestionItem(false, (String) it.next()));
                }
                return arrayList;
        }
    }

    @Override // org.mozilla.javascript.typedarrays.NativeTypedArrayView.TypedArrayConstructable
    public NativeTypedArrayView construct(NativeArrayBuffer nativeArrayBuffer, int i, int i2) {
        switch (this.$r8$classId) {
            case 3:
                return new NativeInt8Array(nativeArrayBuffer, i, i2);
            case 4:
            case 6:
            default:
                return new NativeUint8ClampedArray(nativeArrayBuffer, i, i2);
            case 5:
                return new NativeUint16Array(nativeArrayBuffer, i, i2);
            case 7:
                return new NativeUint32Array(nativeArrayBuffer, i, i2);
            case 8:
                return new NativeUint8Array(nativeArrayBuffer, i, i2);
        }
    }

    @Override // org.schabi.newpipe.info_list.dialog.StreamDialogEntry.StreamDialogEntryAction
    public void onClick(final Fragment fragment, StreamInfoItem streamInfoItem) {
        final int i = 1;
        final int i2 = 0;
        switch (this.$r8$classId) {
            case 25:
                Context requireContext = fragment.requireContext();
                int serviceId = streamInfoItem.getServiceId();
                String url = streamInfoItem.getUrl();
                String uploaderUrl = streamInfoItem.getUploaderUrl();
                PrettyTime$$ExternalSyntheticLambda0 prettyTime$$ExternalSyntheticLambda0 = new PrettyTime$$ExternalSyntheticLambda0(fragment, streamInfoItem, 8);
                if (!Utils.isNullOrEmpty(uploaderUrl)) {
                    prettyTime$$ExternalSyntheticLambda0.s(uploaderUrl);
                    break;
                } else {
                    UStringsKt.fetchStreamInfoAndSaveToDatabase(requireContext, serviceId, url, new SparseItemUtil$$ExternalSyntheticLambda0(prettyTime$$ExternalSyntheticLambda0, i2));
                    break;
                }
            case 26:
                Context context = fragment.getContext();
                Object[] objArr = {new StreamEntity(streamInfoItem)};
                ArrayList arrayList = new ArrayList(1);
                Object obj = objArr[0];
                PlaylistDialog.createCorrespondingDialog(context, Owner.CC.m(obj, arrayList, obj, arrayList), new java.util.function.Consumer() { // from class: org.schabi.newpipe.info_list.dialog.StreamDialogDefaultEntry$$ExternalSyntheticLambda15
                    @Override // java.util.function.Consumer
                    /* renamed from: accept */
                    public final void s(Object obj2) {
                        int i3 = i2;
                        Fragment fragment2 = fragment;
                        switch (i3) {
                            case 0:
                                PlaylistDialog playlistDialog = (PlaylistDialog) obj2;
                                FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
                                StringBuilder sb = new StringBuilder("StreamDialogEntry@");
                                sb.append(playlistDialog instanceof PlaylistAppendDialog ? "append" : "create");
                                sb.append("_playlist");
                                playlistDialog.show(parentFragmentManager, sb.toString());
                                break;
                            default:
                                StreamInfo streamInfo = (StreamInfo) obj2;
                                if (fragment2.isAdded() && !fragment2.isStateSaved()) {
                                    new DownloadDialog(fragment2.requireContext(), streamInfo).show(fragment2.getChildFragmentManager(), "downloadDialog");
                                    break;
                                }
                                break;
                        }
                    }

                    public /* synthetic */ java.util.function.Consumer andThen(java.util.function.Consumer consumer) {
                        int i3 = i2;
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                break;
            case 27:
                CloseableKt.playWithKore(fragment.requireContext(), Uri.parse(streamInfoItem.getUrl()));
                break;
            case 28:
                Transition.Impl26.shareText(fragment.requireContext(), streamInfoItem.getName(), streamInfoItem.getUrl(), streamInfoItem.getThumbnails());
                break;
            default:
                UStringsKt.fetchStreamInfoAndSaveToDatabase(fragment.requireContext(), streamInfoItem.getServiceId(), streamInfoItem.getUrl(), new java.util.function.Consumer() { // from class: org.schabi.newpipe.info_list.dialog.StreamDialogDefaultEntry$$ExternalSyntheticLambda15
                    @Override // java.util.function.Consumer
                    /* renamed from: accept */
                    public final void s(Object obj2) {
                        int i3 = i;
                        Fragment fragment2 = fragment;
                        switch (i3) {
                            case 0:
                                PlaylistDialog playlistDialog = (PlaylistDialog) obj2;
                                FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
                                StringBuilder sb = new StringBuilder("StreamDialogEntry@");
                                sb.append(playlistDialog instanceof PlaylistAppendDialog ? "append" : "create");
                                sb.append("_playlist");
                                playlistDialog.show(parentFragmentManager, sb.toString());
                                break;
                            default:
                                StreamInfo streamInfo = (StreamInfo) obj2;
                                if (fragment2.isAdded() && !fragment2.isStateSaved()) {
                                    new DownloadDialog(fragment2.requireContext(), streamInfo).show(fragment2.getChildFragmentManager(), "downloadDialog");
                                    break;
                                }
                                break;
                        }
                    }

                    public /* synthetic */ java.util.function.Consumer andThen(java.util.function.Consumer consumer) {
                        int i3 = i;
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                break;
        }
    }

    @Override // org.mozilla.javascript.typedarrays.NativeTypedArrayView.RealThis
    public NativeTypedArrayView realThis(Scriptable scriptable) {
        NativeInt32Array realThis;
        NativeInt8Array realThis2;
        NativeUint16Array realThis3;
        NativeUint32Array realThis4;
        NativeUint8Array realThis5;
        NativeUint8ClampedArray realThis6;
        switch (this.$r8$classId) {
            case 1:
                realThis = NativeInt32Array.realThis(scriptable);
                return realThis;
            case 2:
                realThis2 = NativeInt8Array.realThis(scriptable);
                return realThis2;
            case 3:
            case 5:
            case 7:
            case 8:
            default:
                realThis6 = NativeUint8ClampedArray.realThis(scriptable);
                return realThis6;
            case 4:
                realThis3 = NativeUint16Array.realThis(scriptable);
                return realThis3;
            case 6:
                realThis4 = NativeUint32Array.realThis(scriptable);
                return realThis4;
            case 9:
                realThis5 = NativeUint8Array.realThis(scriptable);
                return realThis5;
        }
    }

    @Override // io.reactivex.rxjava3.functions.Action
    public void run() {
        int i = ChannelFragment.$r8$clinit;
    }

    public static /* synthetic */ void m(String str, Throwable th) {
        throw new ParsingException(str, th);
    }

    public /* synthetic */ Utils$$ExternalSyntheticBUOutline0(int i) {
        this.$r8$classId = i;
    }

    @Override // io.reactivex.rxjava3.functions.BiFunction
    public Object apply(Object obj, Object obj2) {
        List list = (List) obj;
        switch (this.$r8$classId) {
            case 20:
                int i = PlaylistFragment.$r8$clinit;
                break;
            default:
                SearchFragment.m869$r8$lambda$D5gL6hX0Mo6q1vU6pdkn6B4CkA(list, (List) obj2);
                break;
        }
        return list;
    }
}
