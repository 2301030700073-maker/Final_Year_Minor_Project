package com.google.android.exoplayer2.text.subrip;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.SimpleSubtitleDecoder;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.LongArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.common.base.Charsets;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public final class SubripDecoder extends SimpleSubtitleDecoder {
    private static final String ALIGN_BOTTOM_LEFT = "{\\an1}";
    private static final String ALIGN_BOTTOM_MID = "{\\an2}";
    private static final String ALIGN_BOTTOM_RIGHT = "{\\an3}";
    private static final String ALIGN_MID_LEFT = "{\\an4}";
    private static final String ALIGN_MID_MID = "{\\an5}";
    private static final String ALIGN_MID_RIGHT = "{\\an6}";
    private static final String ALIGN_TOP_LEFT = "{\\an7}";
    private static final String ALIGN_TOP_MID = "{\\an8}";
    private static final String ALIGN_TOP_RIGHT = "{\\an9}";
    private static final float END_FRACTION = 0.92f;
    private static final float MID_FRACTION = 0.5f;
    private static final float START_FRACTION = 0.08f;
    private static final String SUBRIP_ALIGNMENT_TAG = "\\{\\\\an[1-9]\\}";
    private static final String SUBRIP_TIMECODE = "(?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?";
    private static final String TAG = "SubripDecoder";
    private final ArrayList<String> tags;
    private final StringBuilder textBuilder;
    private static final Pattern SUBRIP_TIMING_LINE = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");
    private static final Pattern SUBRIP_TAG_PATTERN = Pattern.compile("\\{\\\\.*?\\}");

    public SubripDecoder() {
        super(TAG);
        this.textBuilder = new StringBuilder();
        this.tags = new ArrayList<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0062, code lost:
    
        r12.setPositionAnchor(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0084, code lost:
    
        if (r14.equals(com.google.android.exoplayer2.text.subrip.SubripDecoder.ALIGN_TOP_RIGHT) != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0094, code lost:
    
        r12.setLineAnchor(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x008b, code lost:
    
        if (r14.equals(com.google.android.exoplayer2.text.subrip.SubripDecoder.ALIGN_TOP_MID) != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0092, code lost:
    
        if (r14.equals(com.google.android.exoplayer2.text.subrip.SubripDecoder.ALIGN_TOP_LEFT) != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00ab, code lost:
    
        if (r14.equals(com.google.android.exoplayer2.text.subrip.SubripDecoder.ALIGN_BOTTOM_RIGHT) != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00bb, code lost:
    
        r12.setLineAnchor(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b2, code lost:
    
        if (r14.equals(com.google.android.exoplayer2.text.subrip.SubripDecoder.ALIGN_BOTTOM_MID) != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b9, code lost:
    
        if (r14.equals(com.google.android.exoplayer2.text.subrip.SubripDecoder.ALIGN_BOTTOM_LEFT) != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0046, code lost:
    
        if (r14.equals(com.google.android.exoplayer2.text.subrip.SubripDecoder.ALIGN_TOP_LEFT) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0071, code lost:
    
        r12.setPositionAnchor(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x004d, code lost:
    
        if (r14.equals(com.google.android.exoplayer2.text.subrip.SubripDecoder.ALIGN_MID_RIGHT) != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0059, code lost:
    
        if (r14.equals(com.google.android.exoplayer2.text.subrip.SubripDecoder.ALIGN_MID_LEFT) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0060, code lost:
    
        if (r14.equals(com.google.android.exoplayer2.text.subrip.SubripDecoder.ALIGN_BOTTOM_RIGHT) != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x006f, code lost:
    
        if (r14.equals(com.google.android.exoplayer2.text.subrip.SubripDecoder.ALIGN_BOTTOM_LEFT) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003a, code lost:
    
        if (r14.equals(com.google.android.exoplayer2.text.subrip.SubripDecoder.ALIGN_TOP_RIGHT) != false) goto L25;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.android.exoplayer2.text.Cue buildCue(android.text.Spanned r13, java.lang.String r14) {
        /*
            r12 = this;
            com.google.android.exoplayer2.text.Cue$Builder r12 = new com.google.android.exoplayer2.text.Cue$Builder
            r12.<init>()
            com.google.android.exoplayer2.text.Cue$Builder r12 = r12.setText(r13)
            if (r14 != 0) goto L10
            com.google.android.exoplayer2.text.Cue r12 = r12.build()
            return r12
        L10:
            int r13 = r14.hashCode()
            r0 = 2
            r1 = 1
            java.lang.String r2 = "{\\an1}"
            java.lang.String r3 = "{\\an2}"
            java.lang.String r4 = "{\\an3}"
            java.lang.String r5 = "{\\an4}"
            java.lang.String r6 = "{\\an5}"
            java.lang.String r7 = "{\\an6}"
            java.lang.String r8 = "{\\an7}"
            java.lang.String r9 = "{\\an8}"
            java.lang.String r10 = "{\\an9}"
            r11 = 0
            switch(r13) {
                case -685620710: goto L6b;
                case -685620679: goto L66;
                case -685620648: goto L5c;
                case -685620617: goto L55;
                case -685620586: goto L50;
                case -685620555: goto L49;
                case -685620524: goto L42;
                case -685620493: goto L3d;
                case -685620462: goto L36;
                default: goto L35;
            }
        L35:
            goto L75
        L36:
            boolean r13 = r14.equals(r10)
            if (r13 == 0) goto L75
            goto L62
        L3d:
            boolean r13 = r14.equals(r9)
            goto L75
        L42:
            boolean r13 = r14.equals(r8)
            if (r13 == 0) goto L75
            goto L71
        L49:
            boolean r13 = r14.equals(r7)
            if (r13 == 0) goto L75
            goto L62
        L50:
            boolean r13 = r14.equals(r6)
            goto L75
        L55:
            boolean r13 = r14.equals(r5)
            if (r13 == 0) goto L75
            goto L71
        L5c:
            boolean r13 = r14.equals(r4)
            if (r13 == 0) goto L75
        L62:
            r12.setPositionAnchor(r0)
            goto L78
        L66:
            boolean r13 = r14.equals(r3)
            goto L75
        L6b:
            boolean r13 = r14.equals(r2)
            if (r13 == 0) goto L75
        L71:
            r12.setPositionAnchor(r11)
            goto L78
        L75:
            r12.setPositionAnchor(r1)
        L78:
            int r13 = r14.hashCode()
            switch(r13) {
                case -685620710: goto Lb5;
                case -685620679: goto Lae;
                case -685620648: goto La7;
                case -685620617: goto La2;
                case -685620586: goto L9d;
                case -685620555: goto L98;
                case -685620524: goto L8e;
                case -685620493: goto L87;
                case -685620462: goto L80;
                default: goto L7f;
            }
        L7f:
            goto Lbf
        L80:
            boolean r13 = r14.equals(r10)
            if (r13 == 0) goto Lbf
            goto L94
        L87:
            boolean r13 = r14.equals(r9)
            if (r13 == 0) goto Lbf
            goto L94
        L8e:
            boolean r13 = r14.equals(r8)
            if (r13 == 0) goto Lbf
        L94:
            r12.setLineAnchor(r11)
            goto Lc2
        L98:
            boolean r13 = r14.equals(r7)
            goto Lbf
        L9d:
            boolean r13 = r14.equals(r6)
            goto Lbf
        La2:
            boolean r13 = r14.equals(r5)
            goto Lbf
        La7:
            boolean r13 = r14.equals(r4)
            if (r13 == 0) goto Lbf
            goto Lbb
        Lae:
            boolean r13 = r14.equals(r3)
            if (r13 == 0) goto Lbf
            goto Lbb
        Lb5:
            boolean r13 = r14.equals(r2)
            if (r13 == 0) goto Lbf
        Lbb:
            r12.setLineAnchor(r0)
            goto Lc2
        Lbf:
            r12.setLineAnchor(r1)
        Lc2:
            int r13 = r12.getPositionAnchor()
            float r13 = getFractionalPositionForAnchorType(r13)
            com.google.android.exoplayer2.text.Cue$Builder r13 = r12.setPosition(r13)
            int r12 = r12.getLineAnchor()
            float r12 = getFractionalPositionForAnchorType(r12)
            com.google.android.exoplayer2.text.Cue$Builder r12 = r13.setLine(r12, r11)
            com.google.android.exoplayer2.text.Cue r12 = r12.build()
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.subrip.SubripDecoder.buildCue(android.text.Spanned, java.lang.String):com.google.android.exoplayer2.text.Cue");
    }

    private Charset detectUtfCharset(ParsableByteArray parsableByteArray) {
        Charset readUtfCharsetFromBom = parsableByteArray.readUtfCharsetFromBom();
        return readUtfCharsetFromBom != null ? readUtfCharsetFromBom : Charsets.UTF_8;
    }

    public static float getFractionalPositionForAnchorType(int i) {
        if (i == 0) {
            return 0.08f;
        }
        if (i == 1) {
            return 0.5f;
        }
        if (i == 2) {
            return END_FRACTION;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
        return 0.0f;
    }

    private static long parseTimecode(Matcher matcher, int i) {
        String group = matcher.group(i + 1);
        long parseLong = (Long.parseLong((String) Assertions.checkNotNull(matcher.group(i + 3))) * 1000) + (Long.parseLong((String) Assertions.checkNotNull(matcher.group(i + 2))) * 60000) + (group != null ? Long.parseLong(group) * 3600000 : 0L);
        String group2 = matcher.group(i + 4);
        if (group2 != null) {
            parseLong += Long.parseLong(group2);
        }
        return parseLong * 1000;
    }

    private String processLine(String str, ArrayList<String> arrayList) {
        String trim = str.trim();
        StringBuilder sb = new StringBuilder(trim);
        Matcher matcher = SUBRIP_TAG_PATTERN.matcher(trim);
        int i = 0;
        while (matcher.find()) {
            String group = matcher.group();
            arrayList.add(group);
            int start = matcher.start() - i;
            int length = group.length();
            sb.replace(start, start + length, "");
            i += length;
        }
        return sb.toString();
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public Subtitle decode(byte[] bArr, int i, boolean z) {
        StringBuilder sb;
        String str;
        ArrayList arrayList = new ArrayList();
        LongArray longArray = new LongArray();
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr, i);
        Charset detectUtfCharset = detectUtfCharset(parsableByteArray);
        while (true) {
            String readLine = parsableByteArray.readLine(detectUtfCharset);
            int i2 = 0;
            if (readLine == null) {
                break;
            }
            if (readLine.length() != 0) {
                try {
                    Integer.parseInt(readLine);
                    String readLine2 = parsableByteArray.readLine(detectUtfCharset);
                    if (readLine2 == null) {
                        Log.w(TAG, "Unexpected end");
                        break;
                    }
                    Matcher matcher = SUBRIP_TIMING_LINE.matcher(readLine2);
                    if (matcher.matches()) {
                        longArray.add(parseTimecode(matcher, 1));
                        longArray.add(parseTimecode(matcher, 6));
                        this.textBuilder.setLength(0);
                        this.tags.clear();
                        String readLine3 = parsableByteArray.readLine(detectUtfCharset);
                        while (true) {
                            boolean isEmpty = TextUtils.isEmpty(readLine3);
                            sb = this.textBuilder;
                            if (isEmpty) {
                                break;
                            }
                            if (sb.length() > 0) {
                                this.textBuilder.append("<br>");
                            }
                            this.textBuilder.append(processLine(readLine3, this.tags));
                            readLine3 = parsableByteArray.readLine(detectUtfCharset);
                        }
                        Spanned fromHtml = Html.fromHtml(sb.toString());
                        while (true) {
                            if (i2 >= this.tags.size()) {
                                str = null;
                                break;
                            }
                            str = this.tags.get(i2);
                            if (str.matches(SUBRIP_ALIGNMENT_TAG)) {
                                break;
                            }
                            i2++;
                        }
                        arrayList.add(buildCue(fromHtml, str));
                        arrayList.add(Cue.EMPTY);
                    } else {
                        Log.w(TAG, "Skipping invalid timing: ".concat(readLine2));
                    }
                } catch (NumberFormatException unused) {
                    Log.w(TAG, "Skipping invalid index: ".concat(readLine));
                }
            }
        }
        return new SubripSubtitle((Cue[]) arrayList.toArray(new Cue[0]), longArray.toArray());
    }
}
