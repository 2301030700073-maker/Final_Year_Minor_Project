package org.schabi.newpipe.extractor.services.youtube;

import com.grack.nanojson.JsonObject;
import j$.util.Comparator;
import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Stack;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.regex.Pattern;
import org.jsoup.nodes.Entities;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda6;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class YoutubeDescriptionHelper {
    public static final Pattern LINK_CONTENT_CLEANER_REGEX = Pattern.compile("(?s)^ +[/•] +(.*?) +$");

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Run {
        public final String close;
        public final String open;
        public int openPosInOutput = -1;
        public final int pos;
        public final Function transformContent;

        public Run(String str, String str2, int i, Function function) {
            this.open = str;
            this.close = str2;
            this.pos = i;
            this.transformContent = function;
        }
    }

    public static String attributedDescriptionToHtml(JsonObject jsonObject) {
        String string;
        int i;
        if (Utils.isNullOrEmpty(jsonObject) || (string = jsonObject.getString("content", null)) == null) {
            return null;
        }
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final int i2 = 1;
        jsonObject.getArray("commandRuns").streamAsJsonObjects().forEach(new Consumer() { // from class: org.schabi.newpipe.extractor.services.youtube.YoutubeDescriptionHelper$$ExternalSyntheticLambda2
            /* JADX WARN: Code restructure failed: missing block: B:17:0x005c, code lost:
            
                if (r4 == false) goto L23;
             */
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void s(java.lang.Object r10) {
                /*
                    Method dump skipped, instructions count: 296
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.services.youtube.YoutubeDescriptionHelper$$ExternalSyntheticLambda2.s(java.lang.Object):void");
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i3 = i2;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i3 = 0;
        jsonObject.getArray("styleRuns").streamAsJsonObjects().forEach(new Consumer() { // from class: org.schabi.newpipe.extractor.services.youtube.YoutubeDescriptionHelper$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void s(Object obj) {
                /*
                    Method dump skipped, instructions count: 296
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.services.youtube.YoutubeDescriptionHelper$$ExternalSyntheticLambda2.s(java.lang.Object):void");
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i32 = i3;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        Collections.sort(arrayList, Comparator.CC.comparingInt(new ListHelper$$ExternalSyntheticLambda6(2)));
        Collections.sort(arrayList2, Comparator.CC.comparingInt(new ListHelper$$ExternalSyntheticLambda6(3)));
        String replace = string.replace((char) 160, ' ');
        Stack stack = new Stack();
        Stack stack2 = new Stack();
        StringBuilder sb = new StringBuilder();
        int i4 = 0;
        int i5 = 0;
        while (i3 < arrayList2.size()) {
            int min = i5 < arrayList.size() ? Math.min(((Run) arrayList2.get(i3)).pos, ((Run) arrayList.get(i5)).pos) : ((Run) arrayList2.get(i3)).pos;
            sb.append(Entities.escape(replace.substring(i4, min)));
            if (((Run) arrayList2.get(i3)).pos == min) {
                Run run = (Run) arrayList2.get(i3);
                i3++;
                while (true) {
                    if (stack.empty()) {
                        break;
                    }
                    Run run2 = (Run) stack.pop();
                    String str = run2.open;
                    String str2 = run2.close;
                    Function function = run2.transformContent;
                    if (str.equals(run.open)) {
                        if (function != null && (i = run2.openPosInOutput) >= 0) {
                            sb.replace(i, sb.length(), (String) function.apply(sb.substring(run2.openPosInOutput)));
                        }
                        sb.append(str2);
                    } else {
                        sb.append(str2);
                        stack2.push(run2);
                    }
                }
                while (!stack2.empty()) {
                    Run run3 = (Run) stack2.pop();
                    sb.append(run3.open);
                    stack.push(run3);
                }
            } else {
                Run run4 = (Run) arrayList.get(i5);
                sb.append(run4.open);
                run4.openPosInOutput = sb.length();
                stack.push(run4);
                i5++;
            }
            i4 = min;
        }
        sb.append(Entities.escape(replace.substring(i4)));
        return sb.toString().replace("\n", "<br>").replace("  ", " &nbsp;");
    }
}
