package com.google.android.gms.cast;

import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class MediaStatus {
    public static final long COMMAND_PAUSE = 1;
    public static final long COMMAND_SEEK = 2;
    public static final long COMMAND_SET_VOLUME = 4;
    public static final long COMMAND_SKIP_BACKWARD = 32;
    public static final long COMMAND_SKIP_FORWARD = 16;
    public static final long COMMAND_TOGGLE_MUTE = 8;
    public static final int IDLE_REASON_CANCELED = 2;
    public static final int IDLE_REASON_ERROR = 4;
    public static final int IDLE_REASON_FINISHED = 1;
    public static final int IDLE_REASON_INTERRUPTED = 3;
    public static final int IDLE_REASON_NONE = 0;
    public static final int PLAYER_STATE_BUFFERING = 4;
    public static final int PLAYER_STATE_IDLE = 1;
    public static final int PLAYER_STATE_PAUSED = 3;
    public static final int PLAYER_STATE_PLAYING = 2;
    public static final int PLAYER_STATE_UNKNOWN = 0;
    public static final int REPEAT_MODE_REPEAT_ALL = 1;
    public static final int REPEAT_MODE_REPEAT_ALL_AND_SHUFFLE = 3;
    public static final int REPEAT_MODE_REPEAT_OFF = 0;
    public static final int REPEAT_MODE_REPEAT_SINGLE = 2;
    private JSONObject zzRJ;
    private MediaInfo zzRK;
    private long[] zzRY;
    private long zzSb;
    private double zzSc;
    private int zzSd;
    private int zzSe;
    private long zzSf;
    private long zzSg;
    private double zzSh;
    private boolean zzSi;
    private int zzSa = 0;
    private int zzSj = 0;
    private int zzSk = 0;
    private final zza zzSl = new zza();

    private class zza {
        private int zzSm = 0;
        private List<MediaQueueItem> zzSn = new ArrayList();
        private SparseArray<Integer> zzSo = new SparseArray<>();

        zza() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clear() {
            this.zzSm = 0;
            this.zzSn.clear();
            this.zzSo.clear();
        }

        private void zza(MediaQueueItem[] mediaQueueItemArr) {
            this.zzSn.clear();
            this.zzSo.clear();
            for (int i = 0; i < mediaQueueItemArr.length; i++) {
                MediaQueueItem mediaQueueItem = mediaQueueItemArr[i];
                this.zzSn.add(mediaQueueItem);
                this.zzSo.put(mediaQueueItem.getItemId(), Integer.valueOf(i));
            }
        }

        private Integer zzaF(int i) {
            return this.zzSo.get(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0071  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean zzg(org.json.JSONObject r10) throws org.json.JSONException {
            /*
                Method dump skipped, instructions count: 270
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.MediaStatus.zza.zzg(org.json.JSONObject):boolean");
        }

        public int getItemCount() {
            return this.zzSn.size();
        }

        public int getRepeatMode() {
            return this.zzSm;
        }

        public MediaQueueItem zzaD(int i) {
            Integer num = this.zzSo.get(i);
            if (num == null) {
                return null;
            }
            return this.zzSn.get(num.intValue());
        }

        public MediaQueueItem zzaE(int i) {
            if (i < 0 || i >= this.zzSn.size()) {
                return null;
            }
            return this.zzSn.get(i);
        }

        public List<MediaQueueItem> zzlt() {
            return Collections.unmodifiableList(this.zzSn);
        }
    }

    public MediaStatus(JSONObject jSONObject) throws JSONException {
        zza(jSONObject, 0);
    }

    private boolean zzh(int i, int i2) {
        return i == 1 && i2 == 0;
    }

    public long[] getActiveTrackIds() {
        return this.zzRY;
    }

    public int getCurrentItemId() {
        return this.zzSa;
    }

    public JSONObject getCustomData() {
        return this.zzRJ;
    }

    public int getIdleReason() {
        return this.zzSe;
    }

    public int getLoadingItemId() {
        return this.zzSj;
    }

    public MediaInfo getMediaInfo() {
        return this.zzRK;
    }

    public double getPlaybackRate() {
        return this.zzSc;
    }

    public int getPlayerState() {
        return this.zzSd;
    }

    public int getPreloadedItemId() {
        return this.zzSk;
    }

    public MediaQueueItem getQueueItem(int i) {
        return this.zzSl.zzaE(i);
    }

    public MediaQueueItem getQueueItemById(int i) {
        return this.zzSl.zzaD(i);
    }

    public int getQueueItemCount() {
        return this.zzSl.getItemCount();
    }

    public List<MediaQueueItem> getQueueItems() {
        return this.zzSl.zzlt();
    }

    public int getQueueRepeatMode() {
        return this.zzSl.getRepeatMode();
    }

    public long getStreamPosition() {
        return this.zzSf;
    }

    public double getStreamVolume() {
        return this.zzSh;
    }

    public boolean isMediaCommandSupported(long j) {
        return (this.zzSg & j) != 0;
    }

    public boolean isMute() {
        return this.zzSi;
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x01d9, code lost:
    
        if (r10.zzSl.zzg(r11) != false) goto L120;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int zza(org.json.JSONObject r11, int r12) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.MediaStatus.zza(org.json.JSONObject, int):int");
    }

    public long zzls() {
        return this.zzSb;
    }
}
