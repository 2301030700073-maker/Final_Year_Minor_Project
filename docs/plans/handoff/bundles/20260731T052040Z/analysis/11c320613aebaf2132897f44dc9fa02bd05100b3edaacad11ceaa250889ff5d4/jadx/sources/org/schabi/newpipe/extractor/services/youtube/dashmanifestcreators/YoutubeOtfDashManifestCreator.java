package org.schabi.newpipe.extractor.services.youtube.dashmanifestcreators;

import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.ChildHelper;
import j$.util.Objects;
import java.util.Arrays;
import kotlin.ranges.RangesKt;
import org.schabi.newpipe.extractor.services.youtube.ItagItem;
import org.schabi.newpipe.extractor.utils.ManifestCreatorCache;
import org.schabi.newpipe.extractor.utils.Pair;
import org.schabi.newpipe.extractor.utils.Utils;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class YoutubeOtfDashManifestCreator {
    public static final ManifestCreatorCache OTF_STREAMS_CACHE = new ManifestCreatorCache();

    public static String fromOtfStreamingUrl(String str, ItagItem itagItem, long j) {
        long j2;
        ManifestCreatorCache manifestCreatorCache = OTF_STREAMS_CACHE;
        if (manifestCreatorCache.containsKey(str)) {
            Pair pair = manifestCreatorCache.get(str);
            Objects.requireNonNull(pair);
            return (String) pair.getSecond();
        }
        ChildHelper initializationResponse = RangesKt.getInitializationResponse(str, itagItem, 2);
        String replace = ((String) initializationResponse.mViewInRemoveView).replace("&sq=0", "").replace("&rn=0", "").replace("&alr=yes", "");
        int i = initializationResponse.mRemoveStatus;
        if (i != 200) {
            throw new CreationException(Modifier.CC.m(i, "Could not get the initialization URL: response code "));
        }
        try {
            int i2 = 1;
            char c = 0;
            String[] split = ((String) initializationResponse.mHiddenViews).split("Segment-Durations-Ms: ")[1].split("\n")[0].split(",");
            int length = split.length - 1;
            if (Utils.isBlank(split[length])) {
                split = (String[]) Arrays.copyOf(split, length);
            }
            String[] strArr = split;
            try {
                try {
                    int length2 = strArr.length;
                    int i3 = 0;
                    j2 = 0;
                    while (i3 < length2) {
                        String[] split2 = strArr[i3].split("\\(r=");
                        long parseLong = split2.length > i2 ? Long.parseLong(Utils.removeNonDigitCharacters(split2[i2])) : 0L;
                        long parseInt = Integer.parseInt(split2[c]);
                        j2 += (parseLong * parseInt) + parseInt;
                        i3++;
                        i2 = 1;
                        c = 0;
                    }
                } catch (NumberFormatException e) {
                    throw new CreationException("Could not get stream length from sequences list", e);
                }
            } catch (CreationException unused) {
                j2 = j * 1000;
            }
            Document generateDocumentAndDoCommonElementsGeneration = RangesKt.generateDocumentAndDoCommonElementsGeneration(itagItem, j2);
            RangesKt.generateSegmentTemplateElement(generateDocumentAndDoCommonElementsGeneration, replace, 2);
            RangesKt.generateSegmentTimelineElement(generateDocumentAndDoCommonElementsGeneration);
            try {
                Element element = (Element) generateDocumentAndDoCommonElementsGeneration.getElementsByTagName("SegmentTimeline").item(0);
                for (String str2 : strArr) {
                    Element createElement = generateDocumentAndDoCommonElementsGeneration.createElement("S");
                    String[] split3 = str2.split("\\(r=");
                    Integer.parseInt(split3[0]);
                    if (split3.length > 1) {
                        RangesKt.setAttribute(createElement, generateDocumentAndDoCommonElementsGeneration, "r", String.valueOf(Integer.parseInt(Utils.removeNonDigitCharacters(split3[1]))));
                    }
                    RangesKt.setAttribute(createElement, generateDocumentAndDoCommonElementsGeneration, "d", split3[0]);
                    element.appendChild(createElement);
                }
                return RangesKt.buildAndCacheResult(str, generateDocumentAndDoCommonElementsGeneration, manifestCreatorCache);
            } catch (IllegalStateException | IndexOutOfBoundsException | NumberFormatException | DOMException e2) {
                throw CreationException.couldNotAddElement(e2, "segment (S)");
            }
        } catch (Exception e3) {
            throw new CreationException("Could not get segment durations", e3);
        }
    }
}
