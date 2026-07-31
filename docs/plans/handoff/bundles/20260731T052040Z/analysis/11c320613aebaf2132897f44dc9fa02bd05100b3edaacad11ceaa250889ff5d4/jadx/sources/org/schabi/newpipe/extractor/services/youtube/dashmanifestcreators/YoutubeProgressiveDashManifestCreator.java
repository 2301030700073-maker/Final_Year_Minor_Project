package org.schabi.newpipe.extractor.services.youtube.dashmanifestcreators;

import j$.util.Objects;
import kotlin.ranges.RangesKt;
import org.schabi.newpipe.extractor.services.youtube.ItagItem;
import org.schabi.newpipe.extractor.utils.ManifestCreatorCache;
import org.schabi.newpipe.extractor.utils.Pair;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class YoutubeProgressiveDashManifestCreator {
    public static final ManifestCreatorCache PROGRESSIVE_STREAMS_CACHE = new ManifestCreatorCache();

    public static String fromProgressiveStreamingUrl(String str, ItagItem itagItem, long j) {
        ManifestCreatorCache manifestCreatorCache = PROGRESSIVE_STREAMS_CACHE;
        if (manifestCreatorCache.containsKey(str)) {
            Pair pair = manifestCreatorCache.get(str);
            Objects.requireNonNull(pair);
            return (String) pair.getSecond();
        }
        long approxDurationMs = itagItem.getApproxDurationMs();
        if (approxDurationMs == -1) {
            if (j <= 0) {
                throw CreationException.couldNotAddElement("MPD", "the duration of the stream could not be determined and durationSecondsFallback is <= 0");
            }
            approxDurationMs = 1000 * j;
        }
        Document generateDocumentAndDoCommonElementsGeneration = RangesKt.generateDocumentAndDoCommonElementsGeneration(itagItem, approxDurationMs);
        try {
            Element element = (Element) generateDocumentAndDoCommonElementsGeneration.getElementsByTagName("Representation").item(0);
            Element createElement = generateDocumentAndDoCommonElementsGeneration.createElement("BaseURL");
            createElement.setTextContent(str);
            element.appendChild(createElement);
            try {
                Element element2 = (Element) generateDocumentAndDoCommonElementsGeneration.getElementsByTagName("Representation").item(0);
                Element createElement2 = generateDocumentAndDoCommonElementsGeneration.createElement("SegmentBase");
                String str2 = itagItem.getIndexStart() + "-" + itagItem.getIndexEnd();
                if (itagItem.getIndexStart() < 0 || itagItem.getIndexEnd() < 0) {
                    throw CreationException.couldNotAddElement("SegmentBase", "ItagItem's indexStart or indexEnd are < 0: ".concat(str2));
                }
                RangesKt.setAttribute(createElement2, generateDocumentAndDoCommonElementsGeneration, "indexRange", str2);
                element2.appendChild(createElement2);
                try {
                    Element element3 = (Element) generateDocumentAndDoCommonElementsGeneration.getElementsByTagName("SegmentBase").item(0);
                    Element createElement3 = generateDocumentAndDoCommonElementsGeneration.createElement("Initialization");
                    String str3 = itagItem.getInitStart() + "-" + itagItem.getInitEnd();
                    if (itagItem.getInitStart() < 0 || itagItem.getInitEnd() < 0) {
                        throw CreationException.couldNotAddElement("Initialization", "ItagItem's initStart and/or initEnd are/is < 0: ".concat(str3));
                    }
                    RangesKt.setAttribute(createElement3, generateDocumentAndDoCommonElementsGeneration, "range", str3);
                    element3.appendChild(createElement3);
                    return RangesKt.buildAndCacheResult(str, generateDocumentAndDoCommonElementsGeneration, manifestCreatorCache);
                } catch (DOMException e) {
                    throw CreationException.couldNotAddElement(e, "Initialization");
                }
            } catch (DOMException e2) {
                throw CreationException.couldNotAddElement(e2, "SegmentBase");
            }
        } catch (DOMException e3) {
            throw CreationException.couldNotAddElement(e3, "BaseURL");
        }
    }
}
