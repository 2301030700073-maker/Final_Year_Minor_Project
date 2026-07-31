package org.schabi.newpipe.extractor.services.youtube.dashmanifestcreators;

import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.ChildHelper;
import j$.util.Objects;
import java.util.List;
import java.util.Map;
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
public abstract class YoutubePostLiveStreamDvrDashManifestCreator {
    public static final ManifestCreatorCache POST_LIVE_DVR_STREAMS_CACHE = new ManifestCreatorCache();

    public static String fromPostLiveStreamDvrStreamingUrl(String str, ItagItem itagItem, int i, long j) {
        ManifestCreatorCache manifestCreatorCache = POST_LIVE_DVR_STREAMS_CACHE;
        if (manifestCreatorCache.containsKey(str)) {
            Pair pair = manifestCreatorCache.get(str);
            Objects.requireNonNull(pair);
            return (String) pair.getSecond();
        }
        if (i <= 0) {
            throw new CreationException(Modifier.CC.m(i, "targetDurationSec value is <= 0: "));
        }
        try {
            ChildHelper initializationResponse = RangesKt.getInitializationResponse(str, itagItem, 3);
            String replace = ((String) initializationResponse.mViewInRemoveView).replace("&sq=0", "").replace("&rn=0", "").replace("&alr=yes", "");
            int i2 = initializationResponse.mRemoveStatus;
            if (i2 != 200) {
                throw new CreationException("Could not get the initialization sequence: response code " + i2);
            }
            Map map = (Map) initializationResponse.mBucket;
            String str2 = (String) ((List) map.get("X-Head-Time-Millis")).get(0);
            String str3 = (String) ((List) map.get("X-Head-Seqnum")).get(0);
            if (Utils.isNullOrEmpty(str3)) {
                throw new CreationException("Could not get the number of segments");
            }
            try {
                j = Long.parseLong(str2);
            } catch (NumberFormatException unused) {
            }
            Document generateDocumentAndDoCommonElementsGeneration = RangesKt.generateDocumentAndDoCommonElementsGeneration(itagItem, j);
            RangesKt.generateSegmentTemplateElement(generateDocumentAndDoCommonElementsGeneration, replace, 3);
            RangesKt.generateSegmentTimelineElement(generateDocumentAndDoCommonElementsGeneration);
            try {
                Element element = (Element) generateDocumentAndDoCommonElementsGeneration.getElementsByTagName("SegmentTimeline").item(0);
                Element createElement = generateDocumentAndDoCommonElementsGeneration.createElement("S");
                RangesKt.setAttribute(createElement, generateDocumentAndDoCommonElementsGeneration, "d", String.valueOf(i * 1000));
                RangesKt.setAttribute(createElement, generateDocumentAndDoCommonElementsGeneration, "r", str3);
                element.appendChild(createElement);
                return RangesKt.buildAndCacheResult(str, generateDocumentAndDoCommonElementsGeneration, manifestCreatorCache);
            } catch (DOMException e) {
                throw CreationException.couldNotAddElement(e, "segment (S)");
            }
        } catch (IndexOutOfBoundsException e2) {
            throw new CreationException("Could not get the value of the X-Head-Time-Millis or the X-Head-Seqnum header", e2);
        }
    }
}
