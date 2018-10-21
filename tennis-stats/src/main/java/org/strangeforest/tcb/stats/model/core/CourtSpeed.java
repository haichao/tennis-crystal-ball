package org.strangeforest.tcb.stats.model.core;

import java.util.ArrayList;
import java.util.*;

import org.strangeforest.tcb.util.*;

import com.google.common.collect.*;

import static java.util.Arrays.*;

public enum CourtSpeed {

	EXTRA_FAST("Extra Fast", 90, null),
	VERY_FAST("Very Fast", 80, 89),
	FAST("Fast", 70, 79),
	MEDIUM_FAST("Medium Fast", 60, 69),
	MEDIUM("Medium", 50, 59),
	MEDIUM_SLOW("Medium Slow", 40, 49),
	SLOW("Slow", 30, 39),
	VERY_SLOW("Very Slow", 20, 29),
	EXTRA_SLOW("Extra Slow", 10, 19),
	UTTERLY_SLOW("Utterly Slow", 0, 9);

	private final String text;
	private final Range<Integer> speedRange;

	CourtSpeed(String text, Integer from, Integer to) {
		this.text = text;
		speedRange = RangeUtil.toRange(from, to);
	}

	public String getText() {
		return text;
	}

	public Range<Integer> getSpeedRange() {
		return speedRange;
	}

	public Integer getSpeedFrom() {
		return speedRange.lowerEndpoint();
	}

	public static CourtSpeed forSpeed(Integer speed) {
		for (CourtSpeed courtSpeed : values()) {
			if (courtSpeed.speedRange.contains(speed))
				return courtSpeed;
		}
		throw new IllegalArgumentException("Invalid court speed: " + speed);
	}

	public static List<CourtSpeed> courtSpeeds() {
		List<CourtSpeed> speeds = new ArrayList<>(asList(values()));
		return speeds;
	}


	public static Range<Integer> toSpeedRange(Integer speed) {
		return speed != null ? forSpeed(speed).getSpeedRange() : Range.all();
	}
}
