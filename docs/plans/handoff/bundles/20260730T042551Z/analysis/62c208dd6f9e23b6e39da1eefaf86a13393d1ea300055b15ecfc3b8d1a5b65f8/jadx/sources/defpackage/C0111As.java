package defpackage;

import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.Cfor;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import defpackage.InterfaceC4121zs;
import java.util.ArrayList;
import java.util.List;

/* renamed from: As, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0111As<T extends InterfaceC4121zs> extends MediaController.Callback {

    /* renamed from: do, reason: not valid java name */
    public final T f143do;

    public C0111As(Cfor.Cdo cdo) {
        this.f143do = cdo;
    }

    @Override // android.media.session.MediaController.Callback
    public final void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
        playbackInfo.getPlaybackType();
        AudioAttributes audioAttributes = playbackInfo.getAudioAttributes();
        if ((audioAttributes.getFlags() & 1) != 1 && (audioAttributes.getFlags() & 4) != 4) {
            audioAttributes.getUsage();
        }
        playbackInfo.getVolumeControl();
        playbackInfo.getMaxVolume();
        playbackInfo.getCurrentVolume();
        ((Cfor.Cdo) this.f143do).f5079do.get();
    }

    @Override // android.media.session.MediaController.Callback
    public final void onExtrasChanged(Bundle bundle) {
        MediaSessionCompat.m3184do(bundle);
        ((Cfor.Cdo) this.f143do).f5079do.get();
    }

    @Override // android.media.session.MediaController.Callback
    public final void onMetadataChanged(MediaMetadata mediaMetadata) {
        if (((Cfor.Cdo) this.f143do).f5079do.get() != null) {
            Parcelable.Creator<MediaMetadataCompat> creator = MediaMetadataCompat.CREATOR;
            if (mediaMetadata != null) {
                Parcel obtain = Parcel.obtain();
                mediaMetadata.writeToParcel(obtain, 0);
                obtain.setDataPosition(0);
                MediaMetadataCompat createFromParcel = MediaMetadataCompat.CREATOR.createFromParcel(obtain);
                obtain.recycle();
                createFromParcel.getClass();
            }
        }
    }

    @Override // android.media.session.MediaController.Callback
    public final void onPlaybackStateChanged(PlaybackState playbackState) {
        ArrayList arrayList;
        PlaybackStateCompat.CustomAction customAction;
        Cfor cfor = ((Cfor.Cdo) this.f143do).f5079do.get();
        if (cfor == null || cfor.f5078do != null || playbackState == null) {
            return;
        }
        List<PlaybackState.CustomAction> customActions = playbackState.getCustomActions();
        if (customActions != null) {
            ArrayList arrayList2 = new ArrayList(customActions.size());
            for (PlaybackState.CustomAction customAction2 : customActions) {
                if (customAction2 != null) {
                    PlaybackState.CustomAction customAction3 = customAction2;
                    customAction = new PlaybackStateCompat.CustomAction(customAction3.getAction(), customAction3.getName(), customAction3.getIcon(), customAction3.getExtras());
                    customAction.f5076do = customAction2;
                } else {
                    customAction = null;
                }
                arrayList2.add(customAction);
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        new PlaybackStateCompat(playbackState.getState(), playbackState.getPosition(), playbackState.getBufferedPosition(), playbackState.getPlaybackSpeed(), playbackState.getActions(), playbackState.getErrorMessage(), playbackState.getLastPositionUpdateTime(), arrayList, playbackState.getActiveQueueItemId(), Build.VERSION.SDK_INT >= 22 ? playbackState.getExtras() : null);
    }

    @Override // android.media.session.MediaController.Callback
    public final void onQueueChanged(List<MediaSession.QueueItem> list) {
        MediaSessionCompat.QueueItem queueItem;
        if (((Cfor.Cdo) this.f143do).f5079do.get() == null || list == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (MediaSession.QueueItem queueItem2 : list) {
            if (queueItem2 != null) {
                MediaSession.QueueItem queueItem3 = queueItem2;
                queueItem = new MediaSessionCompat.QueueItem(queueItem2, MediaDescriptionCompat.m3177do(queueItem3.getDescription()), queueItem3.getQueueId());
            } else {
                queueItem = null;
            }
            arrayList.add(queueItem);
        }
    }

    @Override // android.media.session.MediaController.Callback
    public final void onQueueTitleChanged(CharSequence charSequence) {
        ((Cfor.Cdo) this.f143do).f5079do.get();
    }

    @Override // android.media.session.MediaController.Callback
    public final void onSessionDestroyed() {
        ((Cfor.Cdo) this.f143do).f5079do.get();
    }

    @Override // android.media.session.MediaController.Callback
    public final void onSessionEvent(String str, Bundle bundle) {
        MediaSessionCompat.m3184do(bundle);
        ((Cfor.Cdo) this.f143do).f5079do.get();
    }
}
