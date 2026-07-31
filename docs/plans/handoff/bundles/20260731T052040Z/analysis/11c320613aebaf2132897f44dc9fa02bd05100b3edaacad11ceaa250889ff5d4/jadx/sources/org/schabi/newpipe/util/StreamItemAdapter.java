package org.schabi.newpipe.util;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Spinner;
import androidx.collection.SparseArrayCompat;
import androidx.recyclerview.widget.ChildHelper;
import coil3.decode.StaticImageDecoderKt$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.internal.operators.single.SingleOnErrorReturn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.net.URLDecoder;
import j$.util.Collection;
import j$.util.DesugarArrays;
import j$.util.stream.Collectors;
import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.schabi.newpipe.DownloaderImpl;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.NewPipe$$ExternalSyntheticLambda2;
import org.schabi.newpipe.extractor.downloader.Request;
import org.schabi.newpipe.extractor.stream.Stream;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.streams.WebMReader;
import us.shandian.giga.ui.common.Deleter$$ExternalSyntheticLambda2;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamItemAdapter extends BaseAdapter {
    public final boolean hasAnyVideoOnlyStreamWithNoSecondaryStream;
    public final SparseArrayCompat secondaryStreams;
    public final StreamInfoWrapper streamsWrapper;

    public StreamItemAdapter(StreamInfoWrapper streamInfoWrapper, SparseArrayCompat sparseArrayCompat) {
        this.streamsWrapper = streamInfoWrapper;
        this.secondaryStreams = sparseArrayCompat;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= streamInfoWrapper.getStreamsList().size()) {
                break;
            }
            Stream stream = (Stream) streamInfoWrapper.getStreamsList().get(i);
            if ((stream instanceof VideoStream) && ((VideoStream) stream).isVideoOnly && this.secondaryStreams.get(i) == null) {
                z = true;
                break;
            }
            i++;
        }
        this.hasAnyVideoOnlyStreamWithNoSecondaryStream = z;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.streamsWrapper.getStreamsList().size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0065, code lost:
    
        if (r24 != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006c, code lost:
    
        if (r24 != false) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0104  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View getCustomView(int r21, android.view.View r22, android.view.ViewGroup r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.util.StreamItemAdapter.getCustomView(int, android.view.View, android.view.ViewGroup, boolean):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
        return getCustomView(i, view, viewGroup, true);
    }

    @Override // android.widget.Adapter
    public final Stream getItem(int i) {
        return (Stream) this.streamsWrapper.getStreamsList().get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        return getCustomView(((Spinner) viewGroup).getSelectedItemPosition(), view, viewGroup, false);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class StreamInfoWrapper implements Serializable {
        public static final StreamInfoWrapper EMPTY = new StreamInfoWrapper(null, Collections.EMPTY_LIST);
        private final MediaFormat[] streamFormats;
        private final long[] streamSizes;
        private final List<Stream> streamsList;
        private final String unknownSize;

        public static Boolean $r8$lambda$KFQ3t7UqdVQV7GmJ2mbefzhTed0(StreamInfoWrapper streamInfoWrapper) {
            String decode;
            boolean z = false;
            for (Stream stream : streamInfoWrapper.streamsList) {
                boolean z2 = true;
                boolean z3 = streamInfoWrapper.getSizeInBytes(stream) <= -2;
                boolean z4 = stream.getFormat() == null;
                if (z3 || z4) {
                    DownloaderImpl downloaderImpl = DownloaderImpl.instance;
                    String content = stream.getContent();
                    downloaderImpl.getClass();
                    WebMReader.Segment segment = new WebMReader.Segment();
                    segment.info = "HEAD";
                    segment.tracks = content;
                    ((LinkedHashMap) segment.currentCluster).clear();
                    ChildHelper execute = downloaderImpl.execute(new Request(segment));
                    if (z3) {
                        String header = execute.getHeader("Content-Length");
                        if (!Utils.isNullOrEmpty(header)) {
                            streamInfoWrapper.streamSizes[streamInfoWrapper.streamsList.indexOf(stream)] = Long.parseLong(header);
                            z = true;
                        }
                    }
                    if (z4) {
                        List list = (List) Collection.EL.stream(((Map) execute.mBucket).keySet()).filter(new Deleter$$ExternalSyntheticLambda2(1)).collect(Collectors.toList());
                        if (!list.isEmpty()) {
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                MediaFormat fromSuffix = MediaFormat.getFromSuffix(execute.getHeader((String) it.next()));
                                if (fromSuffix != null) {
                                    streamInfoWrapper.streamFormats[streamInfoWrapper.streamsList.indexOf(stream)] = fromSuffix;
                                    break;
                                }
                            }
                        }
                        String header2 = execute.getHeader("Content-Disposition");
                        if (header2 != null) {
                            try {
                                Pattern pattern = Utils.M_PATTERN;
                                for (String str : URLDecoder.decode(header2, StandardCharsets.UTF_8).split(";")) {
                                    String trim = str.trim();
                                    if (trim.startsWith("filename=")) {
                                        decode = URLDecoder.decode(trim.substring(9), StandardCharsets.UTF_8);
                                    } else if (trim.startsWith("filename*=")) {
                                        decode = URLDecoder.decode(trim.substring(10), StandardCharsets.UTF_8);
                                    } else {
                                        continue;
                                    }
                                    String[] split = decode.split("\\.");
                                    String str2 = split[split.length - 1];
                                    if (str2.endsWith("\"") || str2.endsWith("'")) {
                                        str2 = str2.substring(0, str2.length() - 1);
                                    }
                                    MediaFormat fromSuffix2 = MediaFormat.getFromSuffix(str2);
                                    if (fromSuffix2 != null) {
                                        streamInfoWrapper.streamFormats[streamInfoWrapper.streamsList.indexOf(stream)] = fromSuffix2;
                                        break;
                                    }
                                }
                            } catch (Exception unused) {
                            }
                        }
                        String header3 = execute.getHeader("Content-Type");
                        if (header3 != null) {
                            Iterator it2 = ((List) DesugarArrays.stream(MediaFormat.values()).filter(new NewPipe$$ExternalSyntheticLambda2(header3, 2)).collect(Collectors.toList())).iterator();
                            MediaFormat mediaFormat = null;
                            while (true) {
                                if (it2.hasNext()) {
                                    MediaFormat mediaFormat2 = (MediaFormat) it2.next();
                                    if (mediaFormat != null) {
                                        if (mediaFormat.id != mediaFormat2.id) {
                                            break;
                                        }
                                    } else {
                                        mediaFormat = mediaFormat2;
                                    }
                                } else if (mediaFormat != null) {
                                    streamInfoWrapper.streamFormats[streamInfoWrapper.streamsList.indexOf(stream)] = mediaFormat;
                                }
                            }
                        }
                        if (!z) {
                            z2 = false;
                        }
                        z = z2;
                    }
                }
            }
            return Boolean.valueOf(z);
        }

        public StreamInfoWrapper(Context context, List list) {
            this.streamsList = list;
            this.streamSizes = new long[list.size()];
            this.unknownSize = context == null ? "--.-" : context.getString(R.string.unknown_content);
            this.streamFormats = new MediaFormat[list.size()];
            resetInfo();
        }

        public static SingleOnErrorReturn fetchMoreInfoForWrapper(StreamInfoWrapper streamInfoWrapper) {
            return new SingleOnErrorReturn(new SingleObserveOn(new SingleAmb(new StaticImageDecoderKt$$ExternalSyntheticLambda0(streamInfoWrapper, 8), 3).subscribeOn(Schedulers.IO), AndroidSchedulers.mainThread(), 0), null, Boolean.TRUE);
        }

        public final MediaFormat getFormat(int i) {
            return this.streamFormats[i];
        }

        public final String getFormattedSize(int i) {
            long j = this.streamSizes[i];
            return j > -1 ? Utility.formatBytes(j) : this.unknownSize;
        }

        public final long getSizeInBytes(Stream stream) {
            return this.streamSizes[this.streamsList.indexOf(stream)];
        }

        public final List getStreamsList() {
            return this.streamsList;
        }

        public final void resetInfo() {
            Arrays.fill(this.streamSizes, -2L);
            for (int i = 0; i < this.streamsList.size(); i++) {
                this.streamFormats[i] = this.streamsList.get(i) == null ? null : this.streamsList.get(i).getFormat();
            }
        }

        public final long getSizeInBytes(int i) {
            return this.streamSizes[i];
        }
    }

    public StreamItemAdapter(StreamInfoWrapper streamInfoWrapper) {
        this(streamInfoWrapper, new SparseArrayCompat(0));
    }
}
