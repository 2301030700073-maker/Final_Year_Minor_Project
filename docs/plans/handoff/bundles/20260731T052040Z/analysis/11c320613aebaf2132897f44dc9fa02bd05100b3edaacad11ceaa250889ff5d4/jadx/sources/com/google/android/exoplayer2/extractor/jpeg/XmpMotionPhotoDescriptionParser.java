package com.google.android.exoplayer2.extractor.jpeg;

import androidx.compose.ui.node.Owner;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.jpeg.MotionPhotoDescription;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.XmlPullParserUtil;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Maps;
import com.google.common.collect.RegularImmutableList;
import java.io.StringReader;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
final class XmpMotionPhotoDescriptionParser {
    private static final String TAG = "MotionPhotoXmpParser";
    private static final String[] MOTION_PHOTO_ATTRIBUTE_NAMES = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};
    private static final String[] DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};
    private static final String[] DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    private XmpMotionPhotoDescriptionParser() {
    }

    public static MotionPhotoDescription parse(String str) {
        try {
            return parseInternal(str);
        } catch (ParserException | NumberFormatException | XmlPullParserException unused) {
            Log.w(TAG, "Ignoring unexpected XMP metadata");
            return null;
        }
    }

    private static MotionPhotoDescription parseInternal(String str) {
        XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
        newPullParser.setInput(new StringReader(str));
        newPullParser.next();
        if (!XmlPullParserUtil.isStartTag(newPullParser, "x:xmpmeta")) {
            throw ParserException.createForMalformedContainer("Couldn't find xmp metadata", null);
        }
        int i = ImmutableList.$r8$clinit;
        ImmutableList immutableList = RegularImmutableList.EMPTY;
        long j = C.TIME_UNSET;
        while (true) {
            newPullParser.next();
            if (XmlPullParserUtil.isStartTag(newPullParser, "rdf:Description")) {
                if (!parseMotionPhotoFlagFromDescription(newPullParser)) {
                    break;
                }
                j = parseMotionPhotoPresentationTimestampUsFromDescription(newPullParser);
                immutableList = parseMicroVideoOffsetFromDescription(newPullParser);
            } else if (XmlPullParserUtil.isStartTag(newPullParser, "Container:Directory")) {
                immutableList = parseMotionPhotoV1Directory(newPullParser, "Container", "Item");
            } else if (XmlPullParserUtil.isStartTag(newPullParser, "GContainer:Directory")) {
                immutableList = parseMotionPhotoV1Directory(newPullParser, "GContainer", "GContainerItem");
            }
            if (XmlPullParserUtil.isEndTag(newPullParser, "x:xmpmeta")) {
                if (!immutableList.isEmpty()) {
                    return new MotionPhotoDescription(j, immutableList);
                }
            }
        }
        return null;
    }

    private static ImmutableList parseMicroVideoOffsetFromDescription(XmlPullParser xmlPullParser) {
        for (String str : DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES) {
            String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, str);
            if (attributeValue != null) {
                long parseLong = Long.parseLong(attributeValue);
                MotionPhotoDescription.ContainerItem containerItem = new MotionPhotoDescription.ContainerItem(MimeTypes.IMAGE_JPEG, "Primary", 0L, 0L);
                MotionPhotoDescription.ContainerItem containerItem2 = new MotionPhotoDescription.ContainerItem(MimeTypes.VIDEO_MP4, "MotionPhoto", parseLong, 0L);
                int i = ImmutableList.$r8$clinit;
                Object[] objArr = {containerItem, containerItem2};
                Maps.checkElementsNotNull(objArr);
                return ImmutableList.asImmutableList(2, objArr);
            }
        }
        int i2 = ImmutableList.$r8$clinit;
        return RegularImmutableList.EMPTY;
    }

    private static boolean parseMotionPhotoFlagFromDescription(XmlPullParser xmlPullParser) {
        for (String str : MOTION_PHOTO_ATTRIBUTE_NAMES) {
            String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, str);
            if (attributeValue != null) {
                return Integer.parseInt(attributeValue) == 1;
            }
        }
        return false;
    }

    private static long parseMotionPhotoPresentationTimestampUsFromDescription(XmlPullParser xmlPullParser) {
        for (String str : DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES) {
            String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, str);
            if (attributeValue != null) {
                long parseLong = Long.parseLong(attributeValue);
                return parseLong == -1 ? C.TIME_UNSET : parseLong;
            }
        }
        return C.TIME_UNSET;
    }

    private static ImmutableList parseMotionPhotoV1Directory(XmlPullParser xmlPullParser, String str, String str2) {
        int i = ImmutableList.$r8$clinit;
        Object[] objArr = new Object[4];
        String m$1 = Owner.CC.m$1(str, ":Item");
        String m$12 = Owner.CC.m$1(str, ":Directory");
        int i2 = 0;
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, m$1)) {
                String m$13 = Owner.CC.m$1(str2, ":Mime");
                String m$14 = Owner.CC.m$1(str2, ":Semantic");
                String m$15 = Owner.CC.m$1(str2, ":Length");
                String m$16 = Owner.CC.m$1(str2, ":Padding");
                String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, m$13);
                String attributeValue2 = XmlPullParserUtil.getAttributeValue(xmlPullParser, m$14);
                String attributeValue3 = XmlPullParserUtil.getAttributeValue(xmlPullParser, m$15);
                String attributeValue4 = XmlPullParserUtil.getAttributeValue(xmlPullParser, m$16);
                if (attributeValue == null || attributeValue2 == null) {
                    return RegularImmutableList.EMPTY;
                }
                MotionPhotoDescription.ContainerItem containerItem = new MotionPhotoDescription.ContainerItem(attributeValue, attributeValue2, attributeValue3 != null ? Long.parseLong(attributeValue3) : 0L, attributeValue4 != null ? Long.parseLong(attributeValue4) : 0L);
                int i3 = i2 + 1;
                if (objArr.length < i3) {
                    objArr = Arrays.copyOf(objArr, Maps.expandedCapacity(objArr.length, i3));
                }
                objArr[i2] = containerItem;
                i2 = i3;
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, m$12));
        return ImmutableList.asImmutableList(i2, objArr);
    }
}
