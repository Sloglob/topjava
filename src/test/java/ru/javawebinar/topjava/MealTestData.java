package ru.javawebinar.topjava;

import ru.javawebinar.topjava.model.Meal;

import java.time.LocalDateTime;
import java.time.Month;

import static org.assertj.core.api.Assertions.assertThat;
import static ru.javawebinar.topjava.model.AbstractBaseEntity.START_SEQ;

public class MealTestData {
    public static final int USER_ID = START_SEQ;

    public static final Meal meal = new Meal(START_SEQ, LocalDateTime.of(2022, Month.JANUARY, 31, 14, 0), "Новая еда", 500);

    public static Meal getNew() {
        return new Meal(START_SEQ, LocalDateTime.of(2022, Month.JANUARY, 31, 14, 0), "Новая еда",500);
    }

    public static Meal getUpdated() {
        Meal updated = meal;
        updated.setDateTime(LocalDateTime.of(2022, Month.JANUARY, 31, 14, 0));
        updated.setDescription("Новая еда");
        updated.setCalories(500);
        return updated;
    }

    public static void assertMatch(Meal actual, Meal expected) {
        assertThat(actual).usingRecursiveComparison().isEqualTo(expected);
    }

    public static void assertMatch(Iterable<Meal> actual, Iterable<Meal> expected) {
        assertThat(actual).isEqualTo(expected);
    }
}
